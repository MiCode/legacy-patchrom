.class public Lcom/motorola/android/widget/CalendarEventAttrs;
.super Ljava/lang/Object;
.source "CalendarEventAttrs.java"


# instance fields
.field mBkgImageId:I

.field mColor:I

.field mConflictCount:I

.field mEndMillis:J

.field mEventId:J

.field mStartMillis:J

.field mStatusImageId:Landroid/graphics/Bitmap;

.field mTitle:Ljava/lang/String;

.field mWhen:Ljava/lang/String;

.field mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "color"
    .parameter "when"
    .parameter "conflictCount"
    .parameter "title"
    .parameter "where"
    .parameter "bkgImageId"
    .parameter "statusImageId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEventId:J

    iput-wide p3, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStartMillis:J

    iput-wide p5, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mEndMillis:J

    iput p7, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mColor:I

    iput-object p8, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhen:Ljava/lang/String;

    iput p9, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mConflictCount:I

    iput-object p10, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mTitle:Ljava/lang/String;

    iput-object p11, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mWhere:Ljava/lang/String;

    iput p12, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mBkgImageId:I

    iput-object p13, p0, Lcom/motorola/android/widget/CalendarEventAttrs;->mStatusImageId:Landroid/graphics/Bitmap;

    return-void
.end method
