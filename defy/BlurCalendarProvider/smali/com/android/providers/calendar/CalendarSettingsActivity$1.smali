.class Lcom/android/providers/calendar/CalendarSettingsActivity$1;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/calendar/CalendarSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$1;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    #calls: Lcom/android/providers/calendar/CalendarSettingsActivity;->handleDone()V
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarSettingsActivity;->access$000(Lcom/android/providers/calendar/CalendarSettingsActivity;)V

    .line 77
    return-void
.end method
