.class public Lcom/motorola/android/widget/TaskWidgetItemData;
.super Ljava/lang/Object;
.source "TaskWidgetItemData.java"


# instance fields
.field public mDueDate:J

.field public mID:I

.field public mIsComplete:I

.field public mIsOverDue:I

.field public mPriority:I

.field public mRemindStatus:I

.field public mSectionTitle:Ljava/lang/String;

.field public mStarred:I

.field public mTagName:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsComplete:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsOverDue:I

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mSectionTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIJILjava/lang/String;)V
    .locals 4
    .parameter "_ID"
    .parameter "title"
    .parameter "tagName"
    .parameter "starred"
    .parameter "isComplete"
    .parameter "priority"
    .parameter "remindStatus"
    .parameter "dueDate"
    .parameter "isOverDue"
    .parameter "sectionTitle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsComplete:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    iput v2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsOverDue:I

    iput-object v3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mSectionTitle:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mID:I

    iput-object p2, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mTagName:Ljava/lang/String;

    iput p4, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mStarred:I

    iput p5, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsComplete:I

    iput p6, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mPriority:I

    iput p7, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mRemindStatus:I

    iput-wide p8, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mDueDate:J

    iput p10, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mIsOverDue:I

    iput-object p11, p0, Lcom/motorola/android/widget/TaskWidgetItemData;->mSectionTitle:Ljava/lang/String;

    return-void
.end method
