.class Lcom/android/settings/wifi/WifiDirectProgressDialog$3;
.super Landroid/os/CountDownTimer;
.source "WifiDirectProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectProgressDialog;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectProgressDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$100(Lcom/android/settings/wifi/WifiDirectProgressDialog;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    const v1, 0x7f08018d

    #calls: Lcom/android/settings/wifi/WifiDirectProgressDialog;->showWpsToast(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$000(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)V

    .line 215
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    const/16 v1, 0x3e8

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$320(Lcom/android/settings/wifi/WifiDirectProgressDialog;I)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$400(Lcom/android/settings/wifi/WifiDirectProgressDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->incrementProgressBy(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectProgressDialog;->mLapseTime:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$300(Lcom/android/settings/wifi/WifiDirectProgressDialog;)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->getTimeString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$502(Lcom/android/settings/wifi/WifiDirectProgressDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$400(Lcom/android/settings/wifi/WifiDirectProgressDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectProgressDialog$3;->this$0:Lcom/android/settings/wifi/WifiDirectProgressDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectProgressDialog;->access$500(Lcom/android/settings/wifi/WifiDirectProgressDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 210
    return-void
.end method
