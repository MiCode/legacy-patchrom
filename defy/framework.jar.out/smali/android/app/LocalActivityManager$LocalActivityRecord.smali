.class Landroid/app/LocalActivityManager$LocalActivityRecord;
.super Landroid/os/Binder;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LocalActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalActivityRecord"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field activityInfo:Landroid/content/pm/ActivityInfo;

.field curState:I

.field final id:Ljava/lang/String;

.field instanceState:Landroid/os/Bundle;

.field intent:Landroid/content/Intent;

.field window:Landroid/view/Window;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "_id"
    .parameter "_intent"

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    iput-object p1, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    return-void
.end method
