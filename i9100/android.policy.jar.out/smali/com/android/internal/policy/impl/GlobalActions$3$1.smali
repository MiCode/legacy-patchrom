.class Lcom/android/internal/policy/impl/GlobalActions$3$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$3;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$3;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onPressAction()V

    .line 207
    return-void
.end method
