.class Lcom/android/settings/ChooseLockPassword$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$1;->this$0:Lcom/android/settings/ChooseLockPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method
