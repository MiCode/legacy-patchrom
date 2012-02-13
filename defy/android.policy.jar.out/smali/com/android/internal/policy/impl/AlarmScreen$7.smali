.class Lcom/android/internal/policy/impl/AlarmScreen$7;
.super Ljava/lang/Object;
.source "AlarmScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AlarmScreen;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen$7;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$7;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$100(Lcom/android/internal/policy/impl/AlarmScreen;)V

    return-void
.end method
