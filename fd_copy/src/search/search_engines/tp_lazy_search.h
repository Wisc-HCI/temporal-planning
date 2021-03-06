#ifndef SEARCH_ENGINES_TP_LAZY_SEARCH_H
#define SEARCH_ENGINES_TP_LAZY_SEARCH_H

#include "../evaluation_context.h"
#include "../global_state.h"
#include "../scalar_evaluator.h"
#include "../tp_search_engine.h"
#include "../search_progress.h"
#include "../tp_search_space.h"

#include "../open_lists/open_list.h"

#include <memory>
#include <vector>

class GlobalOperator;
class Heuristic;

namespace options {
class Options;
}

namespace tp_lazy_search {
class TPLazySearch : public TPSearchEngine {
protected:
    std::unique_ptr<EdgeOpenList> open_list;

    // Search behavior parameters
    bool reopen_closed_nodes; // whether to reopen closed nodes upon finding lower g paths
    bool randomize_successors;
    bool preferred_successors_first;

    std::vector<Heuristic *> heuristics;
    std::vector<Heuristic *> preferred_operator_heuristics;
    std::vector<Heuristic *> estimate_heuristics;

    GlobalState current_state;
    StateID current_predecessor_id;
    const GlobalOperator *current_operator;
    int current_g;
    int current_real_g;
    EvaluationContext current_eval_context;

    virtual void initialize() override;
    virtual SearchStatus step() override;

    void generate_successors();
    SearchStatus fetch_next_state();

    void reward_progress();

    void get_successor_operators(std::vector<const GlobalOperator *> &ops);

    // TODO: Move into SearchEngine?
    void print_checkpoint_line(int g) const;

public:
    explicit TPLazySearch(const options::Options &opts);
    virtual ~TPLazySearch() = default;

    void set_pref_operator_heuristics(std::vector<Heuristic *> &heur);

    virtual void print_statistics() const override;
};
}

#endif
