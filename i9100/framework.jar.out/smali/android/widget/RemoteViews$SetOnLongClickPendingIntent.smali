.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x5


# instance fields
.field downPendingIntent:Landroid/app/PendingIntent;

.field key:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field upPendingIntent:Landroid/app/PendingIntent;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "id"
    .parameter "downPendingIntent"
    .parameter "upPendingIntent"

    .prologue
    .line 194
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 195
    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 196
    iput p3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 197
    iput-object p4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 198
    iput-object p5, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 201
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 204
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    .line 205
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    .line 206
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 218
    iget v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    .line 220
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 238
    .local v0, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v2, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V

    .line 282
    .local v2, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    .end local v0           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v2           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 209
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 211
    iget v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    return-void
.end method
