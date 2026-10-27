.class public final Lg0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg0/e;

.field public final b:Lg0/b;

.field public final c:Lg0/b;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lg0/e;Lg0/b;Lg0/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/d;->a:Lg0/e;

    iput-object p2, p0, Lg0/d;->b:Lg0/b;

    iput-object p3, p0, Lg0/d;->c:Lg0/b;

    iput-object p4, p0, Lg0/d;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg0/d;->b:Lg0/b;

    invoke-virtual {v2}, Lg0/b;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le0/c;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    iget-object v2, v2, Le0/c;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v6, v3, :cond_a

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le0/b;

    instance-of v10, v9, Le0/d;

    const/4 v11, 0x2

    if-eqz v10, :cond_1

    add-int/lit8 v10, v7, 0x1

    check-cast v9, Le0/d;

    iget-object v12, v9, Le0/d;->b:Ljava/lang/String;

    invoke-interface {v1, v8, v7, v7, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v11, Lg0/c;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v9, v0}, Lg0/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_1
    move v7, v10

    goto/16 :goto_5

    :cond_1
    instance-of v10, v9, Le0/h;

    if-eqz v10, :cond_8

    add-int/lit8 v10, v7, 0x1

    iget-object v12, v0, Lg0/d;->d:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v9, Le0/h;

    iget-object v13, v9, Le0/h;->b:Landroid/view/textclassifier/TextClassification;

    iget v9, v9, Le0/h;->c:I

    const v14, 0x1020041

    if-gez v9, :cond_2

    invoke-virtual {v13}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v1, v14, v14, v7, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {v13}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    new-instance v9, Lg0/c;

    const/4 v11, 0x1

    invoke-direct {v9, v11, v12, v13}, Lg0/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    if-nez v9, :cond_3

    move v15, v5

    goto :goto_2

    :cond_3
    move v15, v4

    :goto_2
    invoke-virtual {v13}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/RemoteAction;

    if-eqz v15, :cond_4

    move v13, v14

    goto :goto_3

    :cond_4
    move v13, v4

    :goto_3
    invoke-virtual {v9}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v14, v13, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v15, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-nez v15, :cond_6

    invoke-virtual {v9}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual {v9}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_7
    new-instance v7, Lg0/s;

    invoke-direct {v7, v9}, Lg0/s;-><init>(Landroid/app/RemoteAction;)V

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_8
    instance-of v4, v9, Le0/f;

    if-eqz v4, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    return v5
.end method
