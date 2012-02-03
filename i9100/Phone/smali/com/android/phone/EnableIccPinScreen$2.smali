.class Lcom/android/phone/EnableIccPinScreen$2;
.super Ljava/lang/Object;
.source "EnableIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/phone/EnableIccPinScreen$2;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen$2;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/EnableIccPinScreen;->finish()V

    .line 126
    return-void
.end method
