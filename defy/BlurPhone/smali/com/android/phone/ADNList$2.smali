.class Lcom/android/phone/ADNList$2;
.super Ljava/lang/Thread;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ADNList;->getFdnInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 205
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 208
    .local v0, iccPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    const/16 v2, 0x6f3b

    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v1

    .line 209
    .local v1, sizes:[I
    iget-object v2, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/phone/ADNList;->mFdnMaxNameLength:I

    .line 210
    iget-object v2, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, v2, Lcom/android/phone/ADNList;->mFdnMaxNumEntries:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1           #sizes:[I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/ADNList$2;->this$0:Lcom/android/phone/ADNList;

    #getter for: Lcom/android/phone/ADNList;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/ADNList;->access$100(Lcom/android/phone/ADNList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0
.end method
