.class Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageConferenceUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;",
            ">;"
        }
    .end annotation
.end field

.field private resId:I

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUi;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;>;"
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->this$0:Lcom/android/phone/ManageConferenceUi;

    .line 121
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    iput-object p4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->items:Ljava/util/ArrayList;

    .line 123
    iput p3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->resId:I

    .line 124
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 126
    move-object v5, p2

    .line 127
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 129
    .local v6, vi:Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->resId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 131
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;

    .line 132
    .local v0, callItem:Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;
    if-eqz v0, :cond_4

    .line 133
    const v7, 0x7f080041

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 134
    .local v4, split:Landroid/widget/ImageButton;
    const v7, 0x7f080042

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 135
    .local v3, photo:Landroid/widget/ImageView;
    const v7, 0x7f080043

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, name:Landroid/widget/TextView;
    const v7, 0x7f080044

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    .local v1, end:Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 141
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->this$0:Lcom/android/phone/ManageConferenceUi;

    #getter for: Lcom/android/phone/ManageConferenceUi;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/ManageConferenceUi;->access$100(Lcom/android/phone/ManageConferenceUi;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->isDisconnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 153
    :goto_0
    invoke-virtual {v0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->isDisconnected()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    .end local v1           #end:Landroid/widget/Button;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #photo:Landroid/widget/ImageView;
    .end local v4           #split:Landroid/widget/ImageButton;
    :goto_1
    return-object v5

    .line 144
    .restart local v1       #end:Landroid/widget/Button;
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v3       #photo:Landroid/widget/ImageView;
    .restart local v4       #split:Landroid/widget/ImageButton;
    :cond_2
    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 145
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 146
    new-instance v7, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$1;-><init>(Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 158
    new-instance v7, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$2;

    invoke-direct {v7, p0}, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter$2;-><init>(Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 166
    .end local v1           #end:Landroid/widget/Button;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #photo:Landroid/widget/ImageView;
    .end local v4           #split:Landroid/widget/ImageButton;
    :cond_4
    iget-object v7, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallAdapter;->this$0:Lcom/android/phone/ManageConferenceUi;

    const-string v8, "CallCard: ConferenceCallAdapter - callItem == null"

    #calls: Lcom/android/phone/ManageConferenceUi;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/ManageConferenceUi;->access$200(Lcom/android/phone/ManageConferenceUi;Ljava/lang/String;)V

    goto :goto_1
.end method
