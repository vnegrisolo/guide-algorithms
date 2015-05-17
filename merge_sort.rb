# Algorith to merge sort
class MergeSort
  def sort(array, direction = :asc)
    return array unless array && array.size > 1
    m = middle(array.size)

    a1 = sort(array[0..m], direction)
    a2 = sort(array[(m + 1)..array.size], direction)

    merge(a1, a2, direction)
  end

  private

  def merge(a1, a2, direction)
    array = []
    i = 0
    j = 0

    while next?(a1, i) || next?(a2, j)
      array << (choose_first?(a1[i], a2[j], direction) ? a1[i] : a2[j])
      choose_first?(a1[i], a2[j], direction) ? i += 1 : j += 1
    end

    array
  end

  def middle(count)
    (count.to_f / 2).ceil - 1
  end

  def next?(array, index)
    index < array.size
  end

  def not_next?(array, index)
    !next?(array, index)
  end

  def choose_first?(e1, e2, direction)
    e2.nil? || (e1 && compare(e1, e2, direction))
  end

  def compare(e1, e2, direction)
    direction == :asc ? e1 < e2 : e1 > e2
  end
end
