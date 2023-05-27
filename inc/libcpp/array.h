template <class T>
class Array{
protected:
    T* data;
public:
    Array(){
        this->data = new T[0];
    }
   ~Array(){
       if(this->data) delete this->data;
    }
public:
    unsigned int append(){ return 0; }
    unsigned int insert() { return 0; }
    unsigned int remove() { return 0; }
    unsigned int replace() { return 0; }

    int swap() { return 0; }

    T& at(const unsigned int& index){}
    T* addressOf(const unsigned int& index){}
public:
    T operator[](const unsigned int& index){}

};