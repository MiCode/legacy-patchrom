.class Lcom/android/server/AppWidgetService$AppWidgetId;
.super Ljava/lang/Object;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppWidgetId"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/AppWidgetService$Host;

.field provider:Lcom/android/server/AppWidgetService$Provider;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
