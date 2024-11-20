class I: public A{
    private:
        int i;
    public:
        public:
        I(): A(), i(0){}
        I(int xx, int yy, int zz, int ii): A(xx, yy, zz), i(ii){}
        void showI()
        {
            cout<<"\n\nhybrid inheritance: "<<"\nh: "<<i<<endl;
            show();
        }
};