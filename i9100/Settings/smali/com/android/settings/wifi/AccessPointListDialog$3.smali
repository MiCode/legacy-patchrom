.class Lcom/android/settings/wifi/AccessPointListDialog$3;
.super Landroid/os/CountDownTimer;
.source "AccessPointListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #calls: Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)V

    .line 483
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    const/16 v1, 0x3e8

    .line 475
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$420(Lcom/android/settings/wifi/AccessPointListDialog;I)I

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementProgressBy(I)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$400(Lcom/android/settings/wifi/AccessPointListDialog;)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$602(Lcom/android/settings/wifi/AccessPointListDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$3;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$600(Lcom/android/settings/wifi/AccessPointListDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 479
    return-void
.end method
