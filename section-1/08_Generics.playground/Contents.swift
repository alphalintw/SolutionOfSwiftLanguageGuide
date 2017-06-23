// EXPERIMENT
// Modify the anyCommonElements(_:_:) function to make a function that returns an array of the elements that any two sequences have in common.

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Iterator.Element]
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
        var items: [T.Iterator.Element] = []
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    items.append(lhsItem)
                }
            }
        }
        return items
}

anyCommonElements([1, 2, 3], [1, 3])
