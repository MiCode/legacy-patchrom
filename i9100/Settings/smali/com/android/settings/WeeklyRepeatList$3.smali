.class Lcom/android/settings/WeeklyRepeatList$3;
.super Ljava/lang/Object;
.source "WeeklyRepeatList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeeklyRepeatList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeeklyRepeatList;


# direct methods
.method constructor <init>(Lcom/android/settings/WeeklyRepeatList;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/WeeklyRepeatList$3;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$3;->this$0:Lcom/android/settings/WeeklyRepeatList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/WeeklyRepeatList;->setResult(I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/WeeklyRepeatList$3;->this$0:Lcom/android/settings/WeeklyRepeatList;

    invoke-virtual {v0}, Lcom/android/settings/WeeklyRepeatList;->finish()V

    .line 108
    return-void
.end method
