.class public Lcom/android/providers/calendar/MetaData$Fields;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fields"
.end annotation


# instance fields
.field public maxInstance:J

.field public minInstance:J

.field final synthetic this$0:Lcom/android/providers/calendar/MetaData;

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/MetaData;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/providers/calendar/MetaData$Fields;->this$0:Lcom/android/providers/calendar/MetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
