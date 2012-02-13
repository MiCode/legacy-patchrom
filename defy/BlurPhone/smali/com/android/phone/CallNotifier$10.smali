.class Lcom/android/phone/CallNotifier$10;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->showModeSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field final synthetic val$checkedTextMsg:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3897
    iput-object p1, p0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    iput-object p2, p0, Lcom/android/phone/CallNotifier$10;->val$checkedTextMsg:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 3900
    iget-object v0, p0, Lcom/android/phone/CallNotifier$10;->val$checkedTextMsg:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$002(Z)Z

    .line 3901
    iget-object v0, p0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallNotifier;->mModeSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2502(Lcom/android/phone/CallNotifier;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3902
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode switch cancel with check is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/CallNotifier;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3903
    :cond_0
    return-void
.end method
