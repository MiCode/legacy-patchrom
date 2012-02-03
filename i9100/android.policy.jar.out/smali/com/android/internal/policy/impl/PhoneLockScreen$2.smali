.class Lcom/android/internal/policy/impl/PhoneLockScreen$2;
.super Ljava/lang/Object;
.source "PhoneLockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneLockScreen;->popupSOSCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const-string v2, "112"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PhoneLockScreen;

    #getter for: Lcom/android/internal/policy/impl/PhoneLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneLockScreen;->access$300(Lcom/android/internal/policy/impl/PhoneLockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method
