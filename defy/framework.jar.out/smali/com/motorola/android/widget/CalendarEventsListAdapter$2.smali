.class Lcom/motorola/android/widget/CalendarEventsListAdapter$2;
.super Ljava/lang/Object;
.source "CalendarEventsListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/widget/CalendarEventsListAdapter;->getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/CalendarEventsListAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/CalendarEventsListAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter$2;->this$0:Lcom/motorola/android/widget/CalendarEventsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    iget-object v3, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter$2;->this$0:Lcom/motorola/android/widget/CalendarEventsListAdapter;

    #getter for: Lcom/motorola/android/widget/CalendarEventsListAdapter;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/android/widget/CalendarEventsListAdapter;->access$000(Lcom/motorola/android/widget/CalendarEventsListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/CalendarEventAttrs;

    .local v0, eventRecord:Lcom/motorola/android/widget/CalendarEventAttrs;
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEventId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, eventUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, launchIntent:Landroid/content/Intent;
    const/high16 v3, 0x1420

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.calendar"

    const-string v4, "com.android.calendar.EventInfoActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "beginTime"

    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStartMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "endTime"

    iget-wide v4, v0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEndMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/android/widget/CalendarEventsListAdapter$2;->this$0:Lcom/motorola/android/widget/CalendarEventsListAdapter;

    #getter for: Landroid/widget/MotoAppWidgetAdapter;->passedContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/android/widget/CalendarEventsListAdapter;->access$100(Lcom/motorola/android/widget/CalendarEventsListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
