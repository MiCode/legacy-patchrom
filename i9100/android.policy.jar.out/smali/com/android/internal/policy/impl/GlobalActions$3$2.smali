.class Lcom/android/internal/policy/impl/GlobalActions$3$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 211
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 213
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 214
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$502(Z)Z

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
