

class Node<T>{
    var value : t
    var next : Node?

    init (value: T){
        self.value = value
        self.next = nil
    }
}

class LinkedList<T>{

    var head = Node<T>?

    func appendElemnt(value: T){
        let newNode = Node(value: value)

        if head == nil{
            head = newNode
            return
        }

        var currentNode = head
        while currentNode?.next != nil{
            currentNode = currentNode?.next
        }
        currentNode?.next = newNode
    }

    //Reverse linked list without considering space complexity
    func reverseLinkedList(actualList : LinkedList<T>) -> LinkedList<T>{
       var reverseLL = LinkedList<T>()

       var currentNode = actualList.head

       


    }

}