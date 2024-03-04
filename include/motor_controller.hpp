class MotorController {
public:
    MotorController() : MotorController(1) {}

    MotorController(int header);

    void doCyle();

protected:

private:
    int header_;
};