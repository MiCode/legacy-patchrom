.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    return-void
.end method
