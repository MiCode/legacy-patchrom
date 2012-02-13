.class Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarAttrs"
.end annotation


# instance fields
.field mAccountName:Ljava/lang/String;

.field mColor:Landroid/graphics/drawable/Drawable;

.field mDisplayName:Ljava/lang/String;

.field mId:J

.field mSelected:Z

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarSettingsActivity;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "displayName"
    .parameter "accountName"
    .parameter "color"
    .parameter "selected"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->this$0:Lcom/android/providers/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-wide p2, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mId:J

    .line 442
    iput-object p4, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mDisplayName:Ljava/lang/String;

    .line 443
    iput-object p5, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mAccountName:Ljava/lang/String;

    .line 444
    iput-object p6, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mColor:Landroid/graphics/drawable/Drawable;

    .line 445
    iput-boolean p7, p0, Lcom/android/providers/calendar/CalendarSettingsActivity$CalendarAttrs;->mSelected:Z

    .line 446
    return-void
.end method
