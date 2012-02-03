.class Lcom/android/phone/DeleteFdnContactScreen$3;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$3;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$3;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 186
    return-void
.end method
