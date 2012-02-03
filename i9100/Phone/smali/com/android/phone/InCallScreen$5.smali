.class Lcom/android/phone/InCallScreen$5;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$app:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$5;->val$app:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->val$app:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 1444
    return-void
.end method
