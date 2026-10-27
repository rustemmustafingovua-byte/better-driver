.class public final Lf2/z;
.super Lq3/k;
.source "SourceFile"


# instance fields
.field public final synthetic n:Lf2/e0;


# direct methods
.method public constructor <init>(Lf2/e0;)V
    .locals 0

    iput-object p1, p0, Lf2/z;->n:Lf2/e0;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lq3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lf2/z;->n:Lf2/e0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lf2/e0;->c(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(I)Lr3/g;
    .locals 48

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v0, v0, Lf2/z;->n:Lf2/e0;

    iget-object v2, v0, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, v0, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v3}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-interface {v4}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Landroidx/lifecycle/x;

    iget-object v4, v4, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v6, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    new-instance v5, Lr3/g;

    invoke-direct {v5, v2}, Lr3/g;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object v8, v0

    move v6, v1

    goto/16 :goto_5a

    :cond_2
    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v4

    invoke-virtual {v4, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm2/q;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    new-instance v5, Lr3/g;

    invoke-direct {v5, v2}, Lr3/g;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    :cond_3
    iget-object v6, v4, Lm2/q;->a:Lm2/p;

    invoke-virtual {v6}, Lm2/p;->k()Lm2/m;

    move-result-object v7

    iget-object v8, v6, Lm2/p;->c:Le2/g0;

    sget-object v9, Lm2/t;->n:Lm2/w;

    iget-object v7, v7, Lm2/m;->l:Lk/m0;

    invoke-virtual {v7, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/16 v9, 0x22

    if-eqz v7, :cond_6

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_5

    invoke-static {v2}, Lr3/b;->e(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v11

    goto :goto_2

    :cond_5
    const/4 v11, 0x1

    :goto_2
    if-nez v11, :cond_6

    move-object v8, v0

    move v6, v1

    const/4 v5, 0x0

    goto/16 :goto_5a

    :cond_6
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    new-instance v12, Lr3/g;

    invoke-direct {v12, v11}, Lr3/g;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v14, 0x0

    if-lt v13, v9, :cond_7

    invoke-static {v11, v7}, Lr3/b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_9

    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    invoke-virtual {v15, v5, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    and-int/lit8 v16, v16, -0x41

    if-eqz v7, :cond_8

    const/16 v7, 0x40

    goto :goto_3

    :cond_8
    move v7, v14

    :goto_3
    or-int v7, v16, v7

    invoke-virtual {v15, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    :goto_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v15, v7, Landroid/view/View;

    if-eqz v15, :cond_a

    check-cast v7, Landroid/view/View;

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    iput v5, v12, Lr3/g;->b:I

    invoke-virtual {v11, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v6}, Lm2/p;->l()Lm2/p;

    move-result-object v7

    if-eqz v7, :cond_c

    iget v7, v7, Lm2/p;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_af

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v15

    invoke-virtual {v15}, Lm2/r;->a()Lm2/p;

    move-result-object v15

    iget v15, v15, Lm2/p;->g:I

    if-ne v7, v15, :cond_d

    move v7, v5

    :cond_d
    iput v7, v12, Lr3/g;->b:I

    invoke-virtual {v11, v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :goto_7
    iput v1, v12, Lr3/g;->c:I

    invoke-virtual {v11, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Lf2/e0;->d(Lm2/q;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lf2/e0;->V:Lk/v;

    iget-object v7, v0, Lf2/e0;->E:Lk/w0;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v14, "android.view.View"

    invoke-virtual {v12, v14}, Lr3/g;->f(Ljava/lang/String;)V

    iget-object v14, v6, Lm2/p;->d:Lm2/m;

    iget-object v10, v14, Lm2/m;->l:Lk/m0;

    sget-object v5, Lm2/t;->F:Lm2/w;

    invoke-virtual {v10, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "android.widget.EditText"

    invoke-virtual {v12, v5}, Lr3/g;->f(Ljava/lang/String;)V

    :cond_e
    sget-object v5, Lm2/t;->B:Lm2/w;

    invoke-virtual {v10, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "android.widget.TextView"

    invoke-virtual {v12, v5}, Lr3/g;->f(Ljava/lang/String;)V

    :cond_f
    sget-object v5, Lm2/t;->y:Lm2/w;

    invoke-virtual {v10, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    const/4 v5, 0x0

    :cond_10
    check-cast v5, Lm2/h;

    if-eqz v5, :cond_15

    iget v9, v5, Lm2/h;->a:I

    move-object/from16 v21, v2

    iget-boolean v2, v6, Lm2/p;->e:Z

    if-nez v2, :cond_11

    const/4 v2, 0x4

    invoke-static {v2, v6}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    move-object/from16 v22, v7

    if-eqz v20, :cond_16

    goto :goto_8

    :cond_11
    const/4 v2, 0x4

    move-object/from16 v22, v7

    :goto_8
    const-string v7, "AccessibilityNodeInfo.roleDescription"

    if-ne v9, v2, :cond_12

    const v2, 0x7f0b0078

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    const/4 v2, 0x2

    if-ne v9, v2, :cond_13

    const v2, 0x7f0b0077

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    invoke-static {v9}, Lf2/k0;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    if-ne v9, v7, :cond_14

    invoke-virtual {v6}, Lm2/p;->o()Z

    move-result v7

    if-nez v7, :cond_14

    iget-boolean v7, v14, Lm2/m;->n:Z

    if-eqz v7, :cond_16

    :cond_14
    invoke-virtual {v12, v2}, Lr3/g;->f(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    move-object/from16 v21, v2

    move-object/from16 v22, v7

    :cond_16
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lm2/s;->f(Lm2/p;)Z

    move-result v2

    invoke-virtual {v11, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    const/16 v2, 0x22

    if-lt v13, v2, :cond_17

    invoke-static/range {v21 .. v21}, Lr3/b;->e(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    :goto_a
    const/4 v7, 0x4

    goto :goto_b

    :cond_17
    const/4 v2, 0x1

    goto :goto_a

    :goto_b
    invoke-static {v7, v6}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v7

    move/from16 v18, v2

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v7, :cond_1f

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v23, v7

    move-object/from16 v7, v21

    check-cast v7, Lm2/p;

    move-object/from16 v21, v9

    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v9

    move/from16 v24, v13

    iget v13, v7, Lm2/p;->g:I

    invoke-virtual {v9, v13}, Lk/k;->a(I)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v3}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v9

    invoke-virtual {v9}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v9

    iget-object v7, v7, Lm2/p;->c:Le2/g0;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le3/k;

    const/4 v9, -0x1

    if-ne v13, v9, :cond_18

    goto :goto_f

    :cond_18
    if-eqz v7, :cond_19

    invoke-virtual {v11, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_e

    :cond_19
    invoke-virtual {v0}, Lf2/e0;->l()Lk/k;

    move-result-object v7

    invoke-virtual {v7, v13}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm2/q;

    if-eqz v7, :cond_1b

    iget-object v7, v7, Lm2/q;->a:Lm2/p;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lm2/p;->k()Lm2/m;

    move-result-object v7

    sget-object v9, Lm2/t;->n:Lm2/w;

    iget-object v7, v7, Lm2/m;->l:Lk/m0;

    invoke-virtual {v7, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1a

    const/4 v7, 0x0

    :cond_1a
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    :goto_d
    if-nez v18, :cond_1c

    if-nez v7, :cond_1d

    :cond_1c
    invoke-virtual {v11, v3, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1d
    :goto_e
    invoke-virtual {v4, v13, v2}, Lk/v;->f(II)V

    add-int/lit8 v2, v2, 0x1

    :cond_1e
    :goto_f
    add-int/lit8 v13, v24, 0x1

    move-object/from16 v9, v21

    move/from16 v7, v23

    goto :goto_c

    :cond_1f
    iget v2, v0, Lf2/e0;->w:I

    iget-object v7, v12, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v1, v2, :cond_20

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v2, Lr3/d;->d:Lr3/d;

    invoke-virtual {v12, v2}, Lr3/g;->a(Lr3/d;)V

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v2, Lr3/d;->c:Lr3/d;

    invoke-virtual {v12, v2}, Lr3/g;->a(Lr3/d;)V

    :goto_10
    invoke-static {v6}, Lf2/k0;->i(Lm2/p;)Lp2/g;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v3}, Lf2/y;->getFontFamilyResolver()Lt2/d;

    invoke-virtual {v3}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v26

    iget-object v13, v0, Lf2/e0;->R:Lx2/k;

    new-instance v9, Landroid/text/SpannableString;

    move-object/from16 v21, v3

    iget-object v3, v2, Lp2/g;->m:Ljava/lang/String;

    move-object/from16 v29, v8

    iget-object v8, v2, Lp2/g;->l:Ljava/util/List;

    invoke-direct {v9, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v30, v3

    iget-object v3, v2, Lp2/g;->n:Ljava/util/ArrayList;

    move-object/from16 v31, v12

    if-eqz v3, :cond_31

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v12

    move-object/from16 v32, v0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v12, :cond_30

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v33, v0

    move-object/from16 v0, v23

    check-cast v0, Lp2/e;

    move-object/from16 v34, v3

    iget-object v3, v0, Lp2/e;->a:Ljava/lang/Object;

    check-cast v3, Lp2/e0;

    move/from16 v35, v12

    iget v12, v0, Lp2/e;->b:I

    iget v0, v0, Lp2/e;->c:I

    move-object/from16 v36, v4

    iget-object v4, v3, Lp2/e0;->a:La3/o;

    move-object/from16 v37, v5

    invoke-interface {v4}, La3/o;->a()J

    move-result-wide v4

    move-object/from16 v39, v14

    move-object/from16 v38, v15

    iget-wide v14, v3, Lp2/e0;->b:J

    move-wide/from16 v24, v14

    iget-object v14, v3, Lp2/e0;->c:Lt2/k;

    iget-object v15, v3, Lp2/e0;->d:Lt2/i;

    move-object/from16 v40, v14

    iget-object v14, v3, Lp2/e0;->j:La3/p;

    iget-object v1, v3, Lp2/e0;->k:Lw2/b;

    move-object/from16 v42, v10

    move-object/from16 v41, v11

    iget-wide v10, v3, Lp2/e0;->l:J

    move-wide/from16 v43, v10

    iget-object v10, v3, Lp2/e0;->m:La3/l;

    iget-object v3, v3, Lp2/e0;->a:La3/o;

    move-object v11, v6

    move-object/from16 v45, v7

    invoke-interface {v3}, La3/o;->a()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v6

    const-wide/16 v46, 0x10

    if-eqz v6, :cond_21

    goto :goto_12

    :cond_21
    cmp-long v3, v4, v46

    if-eqz v3, :cond_22

    new-instance v3, La3/c;

    invoke-direct {v3, v4, v5}, La3/c;-><init>(J)V

    goto :goto_12

    :cond_22
    sget-object v3, La3/n;->a:La3/n;

    :goto_12
    invoke-interface {v3}, La3/o;->a()J

    move-result-wide v3

    invoke-static {v9, v3, v4, v12, v0}, La/a;->A(Landroid/text/Spannable;JII)V

    move/from16 v28, v0

    move-object/from16 v23, v9

    move/from16 v27, v12

    invoke-static/range {v23 .. v28}, La/a;->B(Landroid/text/Spannable;JLb3/c;II)V

    move-object/from16 v0, v23

    move/from16 v3, v27

    move/from16 v4, v28

    if-nez v40, :cond_24

    if-eqz v15, :cond_23

    goto :goto_13

    :cond_23
    const/16 v5, 0x21

    goto :goto_1a

    :cond_24
    :goto_13
    if-nez v40, :cond_25

    sget-object v5, Lt2/k;->n:Lt2/k;

    goto :goto_14

    :cond_25
    move-object/from16 v5, v40

    :goto_14
    if-eqz v15, :cond_26

    iget v6, v15, Lt2/i;->a:I

    goto :goto_15

    :cond_26
    const/4 v6, 0x0

    :goto_15
    new-instance v7, Landroid/text/style/StyleSpan;

    sget-object v9, Lt2/k;->m:Lt2/k;

    iget v5, v5, Lt2/k;->l:I

    iget v9, v9, Lt2/k;->l:I

    invoke-static {v5, v9}, Lj9/n;->h(II)I

    move-result v5

    if-ltz v5, :cond_27

    const/4 v5, 0x1

    :goto_16
    const/4 v9, 0x1

    goto :goto_17

    :cond_27
    const/4 v5, 0x0

    goto :goto_16

    :goto_17
    if-ne v6, v9, :cond_28

    const/4 v6, 0x1

    goto :goto_18

    :cond_28
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_29

    if-eqz v5, :cond_29

    const/4 v5, 0x3

    goto :goto_19

    :cond_29
    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_19

    :cond_2a
    if-eqz v6, :cond_2b

    const/4 v5, 0x2

    goto :goto_19

    :cond_2b
    const/4 v5, 0x0

    :goto_19
    invoke-direct {v7, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v0, v7, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1a
    if-eqz v10, :cond_2d

    iget v6, v10, La3/l;->a:I

    or-int/lit8 v7, v6, 0x1

    if-ne v7, v6, :cond_2c

    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v7, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2c
    or-int/lit8 v7, v6, 0x2

    if-ne v7, v6, :cond_2d

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2d
    if-eqz v14, :cond_2e

    new-instance v6, Landroid/text/style/ScaleXSpan;

    iget v7, v14, La3/p;->a:F

    invoke-direct {v6, v7}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2e
    invoke-static {v0, v1, v3, v4}, La/a;->C(Landroid/text/Spannable;Lw2/b;II)V

    cmp-long v1, v43, v46

    if-eqz v1, :cond_2f

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-static/range {v43 .. v44}, Lm1/v;->y(J)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2f
    add-int/lit8 v1, v33, 0x1

    move-object v9, v0

    move v0, v1

    move-object v6, v11

    move-object/from16 v3, v34

    move/from16 v12, v35

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    move-object/from16 v15, v38

    move-object/from16 v14, v39

    move-object/from16 v11, v41

    move-object/from16 v10, v42

    move-object/from16 v7, v45

    move/from16 v1, p1

    goto/16 :goto_11

    :cond_30
    :goto_1b
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v45, v7

    move-object v0, v9

    move-object/from16 v42, v10

    move-object/from16 v41, v11

    move-object/from16 v39, v14

    move-object/from16 v38, v15

    move-object v11, v6

    goto :goto_1c

    :cond_31
    move-object/from16 v32, v0

    goto :goto_1b

    :goto_1c
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lu8/r;->l:Lu8/r;

    if-eqz v8, :cond_33

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_34

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lp2/e;

    iget-object v10, v9, Lp2/e;->a:Ljava/lang/Object;

    instance-of v10, v10, Lp2/o0;

    if-eqz v10, :cond_32

    iget v10, v9, Lp2/e;->b:I

    iget v9, v9, Lp2/e;->c:I

    const/4 v12, 0x0

    invoke-static {v12, v1, v10, v9}, Lp2/h;->b(IIII)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_33
    move-object v4, v3

    :cond_34
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v1, :cond_36

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/e;

    iget-object v7, v6, Lp2/e;->a:Ljava/lang/Object;

    check-cast v7, Lp2/o0;

    iget v9, v6, Lp2/e;->b:I

    iget v6, v6, Lp2/e;->c:I

    instance-of v10, v7, Lp2/o0;

    if-eqz v10, :cond_35

    new-instance v10, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v7, v7, Lp2/o0;->a:Ljava/lang/String;

    invoke-direct {v10, v7}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v7

    const/16 v10, 0x21

    invoke-virtual {v0, v7, v9, v6, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_35
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v8, :cond_38

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_38

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lp2/e;

    iget-object v9, v7, Lp2/e;->a:Ljava/lang/Object;

    instance-of v9, v9, Lp2/n0;

    if-eqz v9, :cond_37

    iget v9, v7, Lp2/e;->b:I

    iget v7, v7, Lp2/e;->c:I

    const/4 v12, 0x0

    invoke-static {v12, v1, v9, v7}, Lp2/h;->b(IIII)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_38
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v1, :cond_3a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e;

    iget-object v6, v5, Lp2/e;->a:Ljava/lang/Object;

    check-cast v6, Lp2/n0;

    iget v7, v5, Lp2/e;->b:I

    iget v5, v5, Lp2/e;->c:I

    iget-object v8, v13, Lx2/k;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/WeakHashMap;

    invoke-virtual {v8, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_39

    new-instance v9, Landroid/text/style/URLSpan;

    iget-object v10, v6, Lp2/n0;->a:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    check-cast v9, Landroid/text/style/URLSpan;

    const/16 v10, 0x21

    invoke-virtual {v0, v9, v7, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_3a
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lp2/g;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_3f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/e;

    iget v5, v4, Lp2/e;->b:I

    iget-object v6, v4, Lp2/e;->a:Ljava/lang/Object;

    iget v7, v4, Lp2/e;->c:I

    if-eq v5, v7, :cond_3e

    move-object v8, v6

    check-cast v8, Lp2/m;

    instance-of v9, v8, Lp2/l;

    if-eqz v9, :cond_3c

    new-instance v4, Lp2/e;

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url"

    invoke-static {v6, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lp2/l;

    invoke-direct {v4, v5, v7, v6}, Lp2/e;-><init>(IILjava/lang/Object;)V

    iget-object v8, v13, Lx2/k;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/WeakHashMap;

    invoke-virtual {v8, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3b

    new-instance v9, Landroid/text/style/URLSpan;

    iget-object v6, v6, Lp2/l;->a:Ljava/lang/String;

    invoke-direct {v9, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    check-cast v9, Landroid/text/style/URLSpan;

    const/16 v10, 0x21

    invoke-virtual {v0, v9, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_22

    :cond_3c
    iget-object v6, v13, Lx2/k;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3d

    new-instance v9, Lx2/e;

    invoke-direct {v9, v8}, Lx2/e;-><init>(Lp2/m;)V

    invoke-virtual {v6, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    check-cast v9, Landroid/text/style/ClickableSpan;

    const/16 v10, 0x21

    invoke-virtual {v0, v9, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_22

    :cond_3e
    const/16 v10, 0x21

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3f
    invoke-static {v0}, Lf2/e0;->I(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v1, v45

    goto :goto_23

    :cond_40
    move-object/from16 v32, v0

    move-object/from16 v21, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v29, v8

    move-object/from16 v42, v10

    move-object/from16 v41, v11

    move-object/from16 v31, v12

    move-object/from16 v39, v14

    move-object/from16 v38, v15

    move-object v11, v6

    move-object v1, v7

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lm2/t;->L:Lm2/w;

    move-object/from16 v2, v42

    invoke-virtual {v2, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v3, v41

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    invoke-virtual {v2, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_41

    const/4 v0, 0x0

    :cond_41
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :goto_24
    move-object/from16 v0, v38

    goto :goto_25

    :cond_42
    move-object/from16 v3, v41

    goto :goto_24

    :goto_25
    invoke-static {v11, v0}, Lf2/k0;->h(Lm2/p;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_43

    invoke-static {v1, v4}, Li2/a;->i(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_26

    :cond_43
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_26
    invoke-static {v11}, Lf2/k0;->g(Lm2/p;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    sget-object v4, Lm2/t;->J:Lm2/w;

    invoke-virtual {v2, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_44

    const/4 v4, 0x0

    :cond_44
    check-cast v4, Lo2/a;

    if-eqz v4, :cond_46

    sget-object v5, Lo2/a;->l:Lo2/a;

    if-ne v4, v5, :cond_45

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_27

    :cond_45
    sget-object v5, Lo2/a;->m:Lo2/a;

    if-ne v4, v5, :cond_46

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_46
    :goto_27
    sget-object v4, Lm2/t;->I:Lm2/w;

    invoke-virtual {v2, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_47

    const/4 v4, 0x0

    :cond_47
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v37, :cond_48

    move-object/from16 v5, v37

    const/4 v7, 0x4

    goto :goto_28

    :cond_48
    move-object/from16 v5, v37

    iget v6, v5, Lm2/h;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_49

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    goto :goto_29

    :cond_49
    :goto_28
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_29
    move-object/from16 v4, v39

    goto :goto_2a

    :cond_4a
    move-object/from16 v5, v37

    const/4 v7, 0x4

    goto :goto_29

    :goto_2a
    iget-boolean v6, v4, Lm2/m;->n:Z

    if-eqz v6, :cond_4b

    invoke-static {v7, v11}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4e

    :cond_4b
    sget-object v6, Lm2/t;->a:Lm2/w;

    invoke-virtual {v2, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    const/4 v6, 0x0

    :cond_4c
    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_4d

    invoke-static {v6}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2b

    :cond_4d
    const/4 v6, 0x0

    :goto_2b
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4e
    sget-object v6, Lm2/t;->z:Lm2/w;

    invoke-virtual {v2, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4f

    const/4 v6, 0x0

    :cond_4f
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_52

    move-object v7, v11

    :goto_2c
    if-eqz v7, :cond_51

    iget-object v8, v7, Lm2/p;->d:Lm2/m;

    sget-object v9, Lm2/u;->a:Lm2/w;

    iget-object v10, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v10, v9}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-virtual {v8, v9}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2d

    :cond_50
    invoke-virtual {v7}, Lm2/p;->l()Lm2/p;

    move-result-object v7

    goto :goto_2c

    :cond_51
    const/4 v7, 0x0

    :goto_2d
    if-eqz v7, :cond_52

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    :cond_52
    sget-object v6, Lm2/t;->h:Lm2/w;

    invoke-virtual {v2, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_53

    const/4 v6, 0x0

    :cond_53
    check-cast v6, Lt8/z;

    if-eqz v6, :cond_54

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    :cond_54
    move/from16 v6, p1

    const/4 v9, -0x1

    if-eq v6, v9, :cond_56

    iget v7, v11, Lm2/p;->g:I

    move-object/from16 v8, v36

    invoke-virtual {v8, v7}, Lk/v;->d(I)I

    move-result v7

    if-eq v7, v9, :cond_55

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDrawingOrder(I)V

    goto :goto_2e

    :cond_55
    const-string v7, "AccessibilityDelegate"

    const-string v8, "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_2e
    sget-object v7, Lm2/t;->K:Lm2/w;

    invoke-virtual {v2, v7}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    sget-object v7, Lm2/t;->N:Lm2/w;

    invoke-virtual {v2, v7}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    sget-object v7, Lm2/t;->O:Lm2/w;

    invoke-virtual {v2, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_57

    const/4 v7, 0x0

    :cond_57
    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_58

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2f

    :cond_58
    const/4 v7, -0x1

    :goto_2f
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v7, Lm2/t;->k:Lm2/w;

    invoke-virtual {v2, v7}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-virtual {v4, v7}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_59

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    move-object/from16 v8, v32

    iput v6, v8, Lf2/e0;->x:I

    :goto_30
    const/4 v9, 0x1

    goto :goto_31

    :cond_59
    move-object/from16 v8, v32

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_31

    :cond_5a
    move-object/from16 v8, v32

    goto :goto_30

    :goto_31
    invoke-static {v11}, Lm2/s;->e(Lm2/p;)Z

    move-result v10

    xor-int/2addr v10, v9

    invoke-virtual {v1, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v9, Lm2/t;->j:Lm2/w;

    invoke-virtual {v2, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5b

    const/4 v9, 0x0

    :cond_5b
    if-nez v9, :cond_ae

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v9, Lm2/l;->b:Lm2/w;

    invoke-static {v4, v9}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm2/a;

    const/16 v10, 0x10

    if-eqz v9, :cond_64

    sget-object v12, Lm2/t;->I:Lm2/w;

    invoke-static {v4, v12}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v5, :cond_5d

    :cond_5c
    const/4 v13, 0x0

    goto :goto_32

    :cond_5d
    iget v13, v5, Lm2/h;->a:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_5c

    const/4 v13, 0x1

    :goto_32
    if-nez v13, :cond_61

    if-nez v5, :cond_5f

    :cond_5e
    const/4 v5, 0x0

    goto :goto_33

    :cond_5f
    iget v5, v5, Lm2/h;->a:I

    const/4 v13, 0x3

    if-ne v5, v13, :cond_5e

    const/4 v5, 0x1

    :goto_33
    if-eqz v5, :cond_60

    goto :goto_34

    :cond_60
    const/4 v5, 0x0

    goto :goto_35

    :cond_61
    :goto_34
    const/4 v5, 0x1

    :goto_35
    if-eqz v5, :cond_63

    if-eqz v5, :cond_62

    if-nez v12, :cond_62

    goto :goto_36

    :cond_62
    const/4 v5, 0x0

    goto :goto_37

    :cond_63
    :goto_36
    const/4 v5, 0x1

    :goto_37
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_64

    new-instance v5, Lr3/d;

    iget-object v9, v9, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v5, v10, v9}, Lr3/d;-><init>(ILjava/lang/String;)V

    move-object/from16 v9, v31

    invoke-virtual {v9, v5}, Lr3/g;->a(Lr3/d;)V

    :goto_38
    const/4 v12, 0x0

    goto :goto_39

    :cond_64
    move-object/from16 v9, v31

    goto :goto_38

    :goto_39
    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    sget-object v5, Lm2/l;->c:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_65

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v12

    if-eqz v12, :cond_65

    new-instance v12, Lr3/d;

    const/16 v13, 0x20

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_65
    sget-object v5, Lm2/l;->q:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_66

    new-instance v12, Lr3/d;

    const/16 v13, 0x4000

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_66
    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v5

    if-eqz v5, :cond_6b

    sget-object v5, Lm2/l;->k:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_67

    new-instance v12, Lr3/d;

    const/high16 v13, 0x200000

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_67
    sget-object v5, Lm2/l;->p:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_68

    new-instance v12, Lr3/d;

    const v13, 0x1020054

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_68
    sget-object v5, Lm2/l;->r:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_69

    new-instance v12, Lr3/d;

    const/high16 v13, 0x10000

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_69
    sget-object v5, Lm2/l;->s:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    if-eqz v5, :cond_6b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_6b

    invoke-virtual/range {v21 .. v21}, Lf2/y;->getClipboardManager()Lf2/j;

    move-result-object v12

    iget-object v12, v12, Lf2/j;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v12}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v12

    if-eqz v12, :cond_6a

    const-string v13, "text/*"

    invoke-virtual {v12, v13}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v12

    goto :goto_3a

    :cond_6a
    const/4 v12, 0x0

    :goto_3a
    if-eqz v12, :cond_6b

    new-instance v12, Lr3/d;

    const v13, 0x8000

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    :cond_6b
    invoke-static {v11}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6c

    goto :goto_3b

    :cond_6c
    const/4 v5, 0x0

    goto :goto_3c

    :cond_6d
    :goto_3b
    const/4 v5, 0x1

    :goto_3c
    if-nez v5, :cond_78

    invoke-virtual {v8, v11}, Lf2/e0;->k(Lm2/p;)I

    move-result v5

    invoke-virtual {v8, v11}, Lf2/e0;->j(Lm2/p;)I

    move-result v12

    invoke-virtual {v3, v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    sget-object v5, Lm2/l;->j:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/a;

    new-instance v12, Lr3/d;

    if-eqz v5, :cond_6e

    iget-object v5, v5, Lm2/a;->a:Ljava/lang/String;

    goto :goto_3d

    :cond_6e
    const/4 v5, 0x0

    :goto_3d
    const/high16 v13, 0x20000

    invoke-direct {v12, v13, v5}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v12}, Lr3/g;->a(Lr3/d;)V

    const/16 v5, 0x100

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v5, 0x200

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    sget-object v5, Lm2/t;->a:Lm2/w;

    invoke-static {v4, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_70

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_3e

    :cond_6f
    const/4 v5, 0x0

    goto :goto_3f

    :cond_70
    :goto_3e
    const/4 v5, 0x1

    :goto_3f
    if-eqz v5, :cond_78

    sget-object v5, Lm2/l;->a:Lm2/w;

    invoke-virtual {v2, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    sget-object v5, Lm2/t;->F:Lm2/w;

    invoke-virtual {v2, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static {v4, v7}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v5

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_44

    :cond_71
    invoke-virtual/range {v29 .. v29}, Le2/g0;->v()Le2/g0;

    move-result-object v5

    :goto_40
    if-eqz v5, :cond_74

    invoke-virtual {v5}, Le2/g0;->x()Lm2/m;

    move-result-object v12

    if-eqz v12, :cond_72

    iget-boolean v13, v12, Lm2/m;->n:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_72

    sget-object v13, Lm2/t;->F:Lm2/w;

    iget-object v12, v12, Lm2/m;->l:Lk/m0;

    invoke-virtual {v12, v13}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v12, 0x1

    goto :goto_41

    :cond_72
    const/4 v12, 0x0

    :goto_41
    if-eqz v12, :cond_73

    goto :goto_42

    :cond_73
    invoke-virtual {v5}, Le2/g0;->v()Le2/g0;

    move-result-object v5

    goto :goto_40

    :cond_74
    const/4 v5, 0x0

    :goto_42
    if-eqz v5, :cond_77

    invoke-virtual {v5}, Le2/g0;->x()Lm2/m;

    move-result-object v5

    if-eqz v5, :cond_76

    iget-object v5, v5, Lm2/m;->l:Lk/m0;

    invoke-virtual {v5, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_75

    const/4 v5, 0x0

    :cond_75
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_43

    :cond_76
    const/4 v5, 0x0

    :goto_43
    if-nez v5, :cond_77

    :goto_44
    const/4 v5, 0x1

    goto :goto_45

    :cond_77
    const/4 v5, 0x0

    :goto_45
    if-nez v5, :cond_78

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v3

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "androidx.compose.ui.semantics.id"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lr3/g;->e()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_7a

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_79

    goto :goto_46

    :cond_79
    const/4 v5, 0x0

    goto :goto_47

    :cond_7a
    :goto_46
    const/4 v5, 0x1

    :goto_47
    if-nez v5, :cond_7b

    sget-object v5, Lm2/l;->a:Lm2/w;

    invoke-virtual {v2, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    const-string v5, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    sget-object v5, Lm2/t;->z:Lm2/w;

    invoke-virtual {v2, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, "androidx.compose.ui.semantics.testTag"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    sget-object v5, Lm2/t;->P:Lm2/w;

    invoke-virtual {v2, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "androidx.compose.ui.semantics.shapeType"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "androidx.compose.ui.semantics.shapeRect"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "androidx.compose.ui.semantics.shapeCorners"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "androidx.compose.ui.semantics.shapeRegion"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAvailableExtraData(Ljava/util/List;)V

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/t;->c:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/g;

    if-eqz v2, :cond_83

    iget v3, v2, Lm2/g;->a:F

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v4

    sget-object v5, Lm2/l;->i:Lm2/w;

    iget-object v4, v4, Lm2/m;->l:Lk/m0;

    invoke-virtual {v4, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, "android.widget.SeekBar"

    invoke-virtual {v9, v4}, Lr3/g;->f(Ljava/lang/String;)V

    goto :goto_48

    :cond_7e
    const-string v4, "android.widget.ProgressBar"

    invoke-virtual {v9, v4}, Lr3/g;->f(Ljava/lang/String;)V

    :goto_48
    sget-object v4, Lm2/g;->d:Lm2/g;

    sget-object v4, Lm2/g;->d:Lm2/g;

    if-eq v2, v4, :cond_7f

    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v4

    iget v4, v4, Lo9/a;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v7

    iget v7, v7, Lo9/a;->b:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    new-instance v12, Lr3/f;

    const/4 v14, 0x1

    invoke-static {v14, v4, v7, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v4

    invoke-direct {v12, v4}, Lr3/f;-><init>(Ljava/lang/Object;)V

    iget-object v4, v12, Lr3/f;->a:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_7f
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v4

    iget-object v4, v4, Lm2/m;->l:Lk/m0;

    invoke-virtual {v4, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v4

    iget v4, v4, Lo9/a;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v5

    iget v5, v5, Lo9/a;->a:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v7, v4, v5

    if-gez v7, :cond_80

    move v4, v5

    :cond_80
    cmpg-float v4, v3, v4

    if-gez v4, :cond_81

    sget-object v4, Lr3/d;->e:Lr3/d;

    invoke-virtual {v9, v4}, Lr3/g;->a(Lr3/d;)V

    :cond_81
    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v4

    iget v4, v4, Lo9/a;->a:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Lm2/g;->a()Lo9/a;

    move-result-object v2

    iget v2, v2, Lo9/a;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpl-float v5, v4, v2

    if-lez v5, :cond_82

    move v4, v2

    :cond_82
    cmpl-float v2, v3, v4

    if-lez v2, :cond_83

    sget-object v2, Lr3/d;->f:Lr3/d;

    invoke-virtual {v9, v2}, Lr3/g;->a(Lr3/d;)V

    :cond_83
    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, v11, Lm2/p;->d:Lm2/m;

    sget-object v3, Lm2/l;->i:Lm2/w;

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    invoke-virtual {v2, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_84

    const/4 v2, 0x0

    :cond_84
    check-cast v2, Lm2/a;

    if-eqz v2, :cond_85

    new-instance v3, Lr3/d;

    const v4, 0x102003d

    iget-object v2, v2, Lm2/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2, v5}, Lr3/d;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ljava/lang/Class;)V

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    :cond_85
    invoke-static {v11, v9}, Lg6/c1;->y(Lm2/p;Lr3/g;)V

    invoke-static {v11, v9}, Lg6/c1;->z(Lm2/p;Lr3/g;)V

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/t;->u:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/i;

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v3

    sget-object v4, Lm2/l;->d:Lm2/w;

    invoke-static {v3, v4}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm2/a;

    const/4 v4, 0x0

    if-eqz v2, :cond_91

    if-eqz v3, :cond_91

    invoke-virtual {v11}, Lm2/p;->k()Lm2/m;

    move-result-object v5

    sget-object v7, Lm2/t;->f:Lm2/w;

    iget-object v5, v5, Lm2/m;->l:Lk/m0;

    invoke-virtual {v5, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_86

    const/4 v5, 0x0

    :cond_86
    if-nez v5, :cond_89

    invoke-virtual {v11}, Lm2/p;->k()Lm2/m;

    move-result-object v5

    sget-object v7, Lm2/t;->e:Lm2/w;

    iget-object v5, v5, Lm2/m;->l:Lk/m0;

    invoke-virtual {v5, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_87

    const/4 v5, 0x0

    :cond_87
    if-eqz v5, :cond_88

    goto :goto_49

    :cond_88
    const/4 v5, 0x0

    goto :goto_4a

    :cond_89
    :goto_49
    const/4 v5, 0x1

    :goto_4a
    if-nez v5, :cond_8a

    const-string v5, "android.widget.HorizontalScrollView"

    invoke-virtual {v9, v5}, Lr3/g;->f(Ljava/lang/String;)V

    :cond_8a
    iget-object v5, v2, Lm2/i;->b:Li9/a;

    invoke-interface {v5}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_8b

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_8b
    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-static {v2}, Lf2/e0;->s(Lm2/i;)Z

    move-result v5

    if-eqz v5, :cond_8e

    sget-object v5, Lr3/d;->e:Lr3/d;

    invoke-virtual {v9, v5}, Lr3/g;->a(Lr3/d;)V

    move-object/from16 v5, v29

    iget-object v7, v5, Le2/g0;->L:Lb3/m;

    sget-object v12, Lb3/m;->m:Lb3/m;

    if-ne v7, v12, :cond_8c

    const/4 v7, 0x1

    goto :goto_4b

    :cond_8c
    const/4 v7, 0x0

    :goto_4b
    if-nez v7, :cond_8d

    sget-object v7, Lr3/d;->j:Lr3/d;

    goto :goto_4c

    :cond_8d
    sget-object v7, Lr3/d;->h:Lr3/d;

    :goto_4c
    invoke-virtual {v9, v7}, Lr3/g;->a(Lr3/d;)V

    goto :goto_4d

    :cond_8e
    move-object/from16 v5, v29

    :goto_4d
    invoke-static {v2}, Lf2/e0;->r(Lm2/i;)Z

    move-result v2

    if-eqz v2, :cond_91

    sget-object v2, Lr3/d;->f:Lr3/d;

    invoke-virtual {v9, v2}, Lr3/g;->a(Lr3/d;)V

    iget-object v2, v5, Le2/g0;->L:Lb3/m;

    sget-object v5, Lb3/m;->m:Lb3/m;

    if-ne v2, v5, :cond_8f

    const/4 v2, 0x1

    goto :goto_4e

    :cond_8f
    const/4 v2, 0x0

    :goto_4e
    if-nez v2, :cond_90

    sget-object v2, Lr3/d;->h:Lr3/d;

    goto :goto_4f

    :cond_90
    sget-object v2, Lr3/d;->j:Lr3/d;

    :goto_4f
    invoke-virtual {v9, v2}, Lr3/g;->a(Lr3/d;)V

    :cond_91
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v5, Lm2/t;->v:Lm2/w;

    invoke-static {v2, v5}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/i;

    if-eqz v2, :cond_99

    if-eqz v3, :cond_99

    invoke-virtual {v11}, Lm2/p;->k()Lm2/m;

    move-result-object v3

    sget-object v5, Lm2/t;->f:Lm2/w;

    iget-object v3, v3, Lm2/m;->l:Lk/m0;

    invoke-virtual {v3, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_92

    const/4 v3, 0x0

    :cond_92
    if-nez v3, :cond_95

    invoke-virtual {v11}, Lm2/p;->k()Lm2/m;

    move-result-object v3

    sget-object v5, Lm2/t;->e:Lm2/w;

    iget-object v3, v3, Lm2/m;->l:Lk/m0;

    invoke-virtual {v3, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_93

    const/4 v3, 0x0

    :cond_93
    if-eqz v3, :cond_94

    goto :goto_50

    :cond_94
    const/4 v3, 0x0

    goto :goto_51

    :cond_95
    :goto_50
    const/4 v3, 0x1

    :goto_51
    if-nez v3, :cond_96

    const-string v3, "android.widget.ScrollView"

    invoke-virtual {v9, v3}, Lr3/g;->f(Ljava/lang/String;)V

    :cond_96
    iget-object v3, v2, Lm2/i;->b:Li9/a;

    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v4

    const/4 v14, 0x1

    if-lez v3, :cond_97

    invoke-virtual {v1, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_97
    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-static {v2}, Lf2/e0;->s(Lm2/i;)Z

    move-result v3

    if-eqz v3, :cond_98

    sget-object v3, Lr3/d;->e:Lr3/d;

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    sget-object v3, Lr3/d;->i:Lr3/d;

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    :cond_98
    invoke-static {v2}, Lf2/e0;->r(Lm2/i;)Z

    move-result v2

    if-eqz v2, :cond_9a

    sget-object v2, Lr3/d;->f:Lr3/d;

    invoke-virtual {v9, v2}, Lr3/g;->a(Lr3/d;)V

    sget-object v2, Lr3/d;->g:Lr3/d;

    invoke-virtual {v9, v2}, Lr3/g;->a(Lr3/d;)V

    goto :goto_52

    :cond_99
    const/4 v14, 0x1

    :cond_9a
    :goto_52
    invoke-static {v11, v9}, Lf2/k0;->d(Lm2/p;Lr3/g;)V

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/t;->d:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/l;->t:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/a;

    if-eqz v2, :cond_9b

    new-instance v3, Lr3/d;

    const/high16 v4, 0x40000

    iget-object v2, v2, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    :cond_9b
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/l;->u:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/a;

    if-eqz v2, :cond_9c

    new-instance v3, Lr3/d;

    const/high16 v4, 0x80000

    iget-object v2, v2, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    :cond_9c
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/l;->v:Lm2/w;

    invoke-static {v2, v3}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/a;

    if-eqz v2, :cond_9d

    new-instance v3, Lr3/d;

    const/high16 v4, 0x100000

    iget-object v2, v2, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lr3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v9, v3}, Lr3/g;->a(Lr3/d;)V

    :cond_9d
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    sget-object v3, Lm2/l;->x:Lm2/w;

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    invoke-virtual {v2, v3}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v2

    invoke-virtual {v2, v3}, Lm2/m;->c(Lm2/w;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lf2/e0;->Z:Lk/w;

    iget v5, v4, Lk/w;->b:I

    if-ge v3, v5, :cond_a6

    new-instance v3, Lk/w0;

    invoke-direct {v3}, Lk/w0;-><init>()V

    invoke-static {}, Lk/q0;->a()Lk/d0;

    move-result-object v5

    move-object/from16 v7, v22

    iget-object v12, v7, Lk/w0;->l:[I

    iget v13, v7, Lk/w0;->n:I

    invoke-static {v12, v13, v6}, Ll/a;->a([III)I

    move-result v12

    if-ltz v12, :cond_9e

    goto :goto_53

    :cond_9e
    const/4 v14, 0x0

    :goto_53
    if-eqz v14, :cond_a4

    invoke-virtual {v7, v6}, Lk/w0;->f(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk/d0;

    new-array v10, v10, [I

    iget-object v13, v4, Lk/w;->a:[I

    iget v4, v4, Lk/w;->b:I

    move-object v15, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_54
    if-ge v10, v4, :cond_a0

    aget v17, v13, v10

    move/from16 v20, v4

    add-int/lit8 v4, v14, 0x1

    move/from16 v22, v10

    array-length v10, v15

    if-ge v10, v4, :cond_9f

    array-length v10, v15

    const/16 v18, 0x3

    mul-int/lit8 v10, v10, 0x3

    const/16 v19, 0x2

    div-int/lit8 v10, v10, 0x2

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v15, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    const-string v15, "copyOf(...)"

    invoke-static {v10, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v10

    goto :goto_55

    :cond_9f
    const/16 v18, 0x3

    const/16 v19, 0x2

    :goto_55
    aput v17, v15, v14

    add-int/lit8 v10, v22, 0x1

    move v14, v4

    move/from16 v4, v20

    goto :goto_54

    :cond_a0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v10

    if-gtz v10, :cond_a3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a1

    const/4 v13, 0x0

    goto :goto_56

    :cond_a1
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr0/i;->p(Ljava/lang/Object;)V

    if-lez v14, :cond_a2

    aget v0, v15, v10

    const/4 v13, 0x0

    throw v13

    :cond_a2
    const/4 v13, 0x0

    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Ll/a;->d(Ljava/lang/String;)V

    throw v13

    :cond_a3
    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-static {v12}, Lj9/n;->d(Ljava/lang/Object;)V

    throw v13

    :cond_a4
    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v12

    if-gtz v12, :cond_a5

    :goto_56
    iget-object v2, v8, Lf2/e0;->D:Lk/w0;

    invoke-virtual {v2, v6, v3}, Lk/w0;->g(ILjava/lang/Object;)V

    invoke-virtual {v7, v6, v5}, Lk/w0;->g(ILjava/lang/Object;)V

    goto :goto_57

    :cond_a5
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr0/i;->p(Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Lk/w;->c(I)I

    throw v13

    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t have more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lk/w;->b:I

    const-string v3, " custom actions for one widget"

    invoke-static {v2, v3, v1}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    :goto_57
    invoke-static {v11, v0}, Lf2/k0;->c(Lm2/p;Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    iget-object v0, v8, Lf2/e0;->N:Lk/v;

    invoke-virtual {v0, v6}, Lk/v;->d(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a9

    invoke-virtual/range {v21 .. v21}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v2

    invoke-static {v2, v0}, Lf2/k0;->o(Lf2/a1;I)Le3/k;

    move-result-object v2

    if-eqz v2, :cond_a8

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    move-object/from16 v2, v21

    goto :goto_58

    :cond_a8
    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :goto_58
    iget-object v0, v8, Lf2/e0;->P:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v8, v6, v9, v0, v5}, Lf2/e0;->c(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_59

    :cond_a9
    move-object/from16 v2, v21

    const/4 v5, 0x0

    :goto_59
    iget-object v0, v8, Lf2/e0;->O:Lk/v;

    invoke-virtual {v0, v6}, Lk/v;->d(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_aa

    invoke-virtual {v2}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v2

    invoke-static {v2, v0}, Lf2/k0;->o(Lf2/a1;I)Le3/k;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    iget-object v0, v8, Lf2/e0;->Q:Ljava/lang/String;

    invoke-virtual {v8, v6, v9, v0, v5}, Lf2/e0;->c(ILr3/g;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_aa
    invoke-virtual {v11}, Lm2/p;->m()Lm2/m;

    move-result-object v0

    sget-object v1, Lm2/u;->b:Lm2/w;

    invoke-static {v0, v1}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ab

    invoke-virtual {v9, v0}, Lr3/g;->f(Ljava/lang/String;)V

    :cond_ab
    move-object v5, v9

    :goto_5a
    iget-boolean v0, v8, Lf2/e0;->A:Z

    if-eqz v0, :cond_ad

    iget v0, v8, Lf2/e0;->w:I

    if-ne v6, v0, :cond_ac

    iput-object v5, v8, Lf2/e0;->y:Lr3/g;

    :cond_ac
    iget v0, v8, Lf2/e0;->x:I

    if-ne v6, v0, :cond_ad

    iput-object v5, v8, Lf2/e0;->z:Lr3/g;

    :cond_ad
    return-object v5

    :cond_ae
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_af
    move v6, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "semanticsNode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has null parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final g(I)Lr3/g;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lf2/z;->n:Lf2/e0;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, v1, Lf2/e0;->w:I

    invoke-virtual {p0, p1}, Lf2/z;->c(I)Lr3/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown focus type: "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, v1, Lf2/e0;->x:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lf2/z;->c(I)Lr3/g;

    move-result-object p0

    return-object p0
.end method

.method public final q(IILandroid/os/Bundle;)Z
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v2, v2, Lf2/z;->n:Lf2/e0;

    iget-object v4, v2, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v2, Lf2/e0;->o:Lf2/y;

    invoke-virtual {v2}, Lf2/e0;->l()Lk/k;

    move-result-object v8

    invoke-virtual {v8, v0}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm2/q;

    if-eqz v8, :cond_0

    iget-object v11, v8, Lm2/q;->a:Lm2/p;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x0

    goto/16 :goto_47

    :cond_1
    iget-object v8, v11, Lm2/p;->c:Le2/g0;

    iget v10, v11, Lm2/p;->g:I

    iget-object v12, v11, Lm2/p;->d:Lm2/m;

    iget-object v13, v12, Lm2/m;->l:Lk/m0;

    sget-object v14, Lm2/t;->n:Lm2/w;

    invoke-virtual {v13, v14}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    :cond_2
    move/from16 p0, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_4

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-lt v14, v9, :cond_3

    invoke-static {v4}, Lr3/b;->e(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v9

    goto :goto_1

    :cond_3
    move v9, v15

    :goto_1
    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v9, 0x40

    const/high16 v14, -0x80000000

    if-eq v1, v9, :cond_86

    const/16 v4, 0x80

    if-eq v1, v4, :cond_84

    const/16 v9, 0x200

    const/16 v4, 0x100

    const/4 v14, -0x1

    if-eq v1, v4, :cond_66

    if-eq v1, v9, :cond_66

    const/16 v4, 0x4000

    if-eq v1, v4, :cond_64

    const/high16 v4, 0x20000

    if-eq v1, v4, :cond_60

    invoke-static {v11}, Lf2/k0;->b(Lm2/p;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    if-eq v1, v15, :cond_5d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5b

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    iget-object v2, v2, Lf2/e0;->D:Lk/w0;

    invoke-virtual {v2, v0}, Lk/w0;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/w0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lk/w0;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Lm2/l;->x:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    move-object v15, v0

    :goto_2
    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lm2/l;->B:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v15, 0x0

    goto :goto_3

    :cond_a
    move-object v15, v0

    :goto_3
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :pswitch_1
    sget-object v0, Lm2/l;->z:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    move-object v15, v0

    :goto_4
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :pswitch_2
    sget-object v0, Lm2/l;->A:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v15, 0x0

    goto :goto_5

    :cond_c
    move-object v15, v0

    :goto_5
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :pswitch_3
    sget-object v0, Lm2/l;->y:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v15, 0x0

    goto :goto_6

    :cond_d
    move-object v15, v0

    :goto_6
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_0
    sget-object v0, Lm2/l;->p:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v15, 0x0

    goto :goto_7

    :cond_e
    move-object v15, v0

    :goto_7
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_1
    if-eqz v3, :cond_0

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lm2/l;->i:Lm2/w;

    invoke-virtual {v13, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v15, 0x0

    goto :goto_8

    :cond_10
    move-object v15, v1

    :goto_8
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v1, v15, Lm2/a;->b:Lt8/e;

    check-cast v1, Li9/c;

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_2
    invoke-virtual {v11}, Lm2/p;->l()Lm2/p;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Lm2/p;->d:Lm2/m;

    sget-object v2, Lm2/l;->d:Lm2/w;

    iget-object v1, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v1, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :cond_11
    check-cast v1, Lm2/a;

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    if-eqz v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Lm2/p;->l()Lm2/p;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Lm2/p;->d:Lm2/m;

    sget-object v2, Lm2/l;->d:Lm2/w;

    iget-object v1, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v1, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :cond_14
    check-cast v1, Lm2/a;

    goto :goto_9

    :cond_15
    :goto_a
    if-nez v0, :cond_16

    invoke-virtual {v11}, Lm2/p;->g()Ll1/c;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Ll1/c;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v2, v2

    iget v3, v0, Ll1/c;->b:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    iget v4, v0, Ll1/c;->c:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ll9/a;->z(F)I

    move-result v4

    iget v0, v0, Ll1/c;->d:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-static {v0}, Ll9/a;->z(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_16
    iget-object v2, v0, Lm2/p;->d:Lm2/m;

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    iget-object v0, v0, Lm2/p;->c:Le2/g0;

    iget-object v3, v0, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->c:Le2/s;

    invoke-static {v3}, Lc2/x;->e(Lc2/u;)Ll1/c;

    move-result-object v3

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->c:Le2/s;

    invoke-virtual {v0}, Le2/h1;->I()Lc2/u;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_17

    check-cast v0, Le2/h1;

    invoke-virtual {v0, v4, v5}, Le2/h1;->R(J)J

    move-result-wide v6

    goto :goto_b

    :cond_17
    move-wide v6, v4

    :goto_b
    invoke-virtual {v3, v6, v7}, Ll1/c;->j(J)Ll1/c;

    move-result-object v0

    invoke-virtual {v11}, Lm2/p;->d()Le2/h1;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Le2/h1;->U0()Lf1/q;

    move-result-object v6

    iget-boolean v6, v6, Lf1/q;->y:Z

    if-eqz v6, :cond_18

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_19

    invoke-virtual {v3, v4, v5}, Le2/h1;->R(J)J

    move-result-wide v6

    goto :goto_d

    :cond_19
    move-wide v6, v4

    :goto_d
    invoke-virtual {v11}, Lm2/p;->d()Le2/h1;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-wide v4, v3, Lc2/f1;->n:J

    :cond_1a
    invoke-static {v4, v5}, Ly4/s;->E(J)J

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object v3

    sget-object v4, Lm2/t;->u:Lm2/w;

    invoke-virtual {v2, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    :cond_1b
    check-cast v4, Lm2/i;

    sget-object v4, Lm2/t;->v:Lm2/w;

    invoke-virtual {v2, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    const/16 v16, 0x0

    goto :goto_e

    :cond_1c
    move-object/from16 v16, v2

    :goto_e
    check-cast v16, Lm2/i;

    iget v2, v3, Ll1/c;->a:F

    iget v4, v0, Ll1/c;->a:F

    sub-float/2addr v2, v4

    iget v4, v3, Ll1/c;->c:F

    iget v5, v0, Ll1/c;->c:F

    sub-float/2addr v4, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_1e

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1d

    goto :goto_f

    :cond_1d
    move v2, v4

    goto :goto_f

    :cond_1e
    move/from16 v2, p0

    :goto_f
    iget-object v4, v8, Le2/g0;->L:Lb3/m;

    sget-object v5, Lb3/m;->m:Lb3/m;

    if-ne v4, v5, :cond_1f

    move v4, v15

    goto :goto_10

    :cond_1f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_20

    neg-float v2, v2

    :cond_20
    iget v4, v3, Ll1/c;->b:F

    iget v5, v0, Ll1/c;->b:F

    sub-float/2addr v4, v5

    iget v3, v3, Ll1/c;->d:F

    iget v0, v0, Ll1/c;->d:F

    sub-float/2addr v3, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-nez v0, :cond_22

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_21

    move v5, v4

    goto :goto_11

    :cond_21
    move v5, v3

    goto :goto_11

    :cond_22
    move/from16 v5, p0

    :goto_11
    if-eqz v1, :cond_0

    iget-object v0, v1, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/e;

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v15, :cond_0

    return v15

    :sswitch_3
    if-eqz v3, :cond_23

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_23
    const/4 v0, 0x0

    :goto_12
    sget-object v1, Lm2/l;->k:Lm2/w;

    invoke-virtual {v13, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_24

    const/4 v15, 0x0

    goto :goto_13

    :cond_24
    move-object v15, v1

    :goto_13
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v1, v15, Lm2/a;->b:Lt8/e;

    check-cast v1, Li9/c;

    if-eqz v1, :cond_0

    new-instance v2, Lp2/g;

    if-nez v0, :cond_25

    const-string v0, ""

    :cond_25
    invoke-direct {v2, v0}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_4
    sget-object v0, Lm2/l;->v:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    const/4 v15, 0x0

    goto :goto_14

    :cond_26
    move-object v15, v0

    :goto_14
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_5
    sget-object v0, Lm2/l;->u:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v15, 0x0

    goto :goto_15

    :cond_27
    move-object v15, v0

    :goto_15
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_6
    sget-object v0, Lm2/l;->t:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    const/4 v15, 0x0

    goto :goto_16

    :cond_28
    move-object v15, v0

    :goto_16
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_7
    sget-object v0, Lm2/l;->r:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v15, 0x0

    goto :goto_17

    :cond_29
    move-object v15, v0

    :goto_17
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_8
    sget-object v0, Lm2/l;->s:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    const/4 v15, 0x0

    goto :goto_18

    :cond_2a
    move-object v15, v0

    :goto_18
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :pswitch_4
    :sswitch_9
    const/16 v0, 0x1000

    if-ne v1, v0, :cond_2b

    move v0, v15

    goto :goto_19

    :cond_2b
    const/4 v0, 0x0

    :goto_19
    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2c

    move v2, v15

    goto :goto_1a

    :cond_2c
    const/4 v2, 0x0

    :goto_1a
    const v3, 0x1020039

    if-ne v1, v3, :cond_2d

    move v3, v15

    goto :goto_1b

    :cond_2d
    const/4 v3, 0x0

    :goto_1b
    const v4, 0x102003b

    if-ne v1, v4, :cond_2e

    move v4, v15

    goto :goto_1c

    :cond_2e
    const/4 v4, 0x0

    :goto_1c
    const v5, 0x1020038

    if-ne v1, v5, :cond_2f

    move v5, v15

    goto :goto_1d

    :cond_2f
    const/4 v5, 0x0

    :goto_1d
    const v7, 0x102003a

    if-ne v1, v7, :cond_30

    move v1, v15

    goto :goto_1e

    :cond_30
    const/4 v1, 0x0

    :goto_1e
    if-nez v3, :cond_32

    if-nez v4, :cond_32

    if-nez v0, :cond_32

    if-eqz v2, :cond_31

    goto :goto_1f

    :cond_31
    const/4 v7, 0x0

    goto :goto_20

    :cond_32
    :goto_1f
    move v7, v15

    :goto_20
    if-nez v5, :cond_34

    if-nez v1, :cond_34

    if-nez v0, :cond_34

    if-eqz v2, :cond_33

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    goto :goto_22

    :cond_34
    :goto_21
    move v1, v15

    :goto_22
    if-nez v0, :cond_35

    if-eqz v2, :cond_3c

    :cond_35
    sget-object v0, Lm2/t;->c:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    const/4 v0, 0x0

    :cond_36
    check-cast v0, Lm2/g;

    sget-object v9, Lm2/l;->i:Lm2/w;

    invoke-virtual {v13, v9}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_37

    const/4 v9, 0x0

    :cond_37
    check-cast v9, Lm2/a;

    if-eqz v0, :cond_3c

    iget-object v10, v0, Lm2/g;->b:Lo9/a;

    if-eqz v9, :cond_3c

    iget v1, v10, Lo9/a;->b:F

    iget v3, v10, Lo9/a;->a:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_38

    move v4, v3

    goto :goto_23

    :cond_38
    move v4, v1

    :goto_23
    cmpl-float v5, v3, v1

    if-lez v5, :cond_39

    goto :goto_24

    :cond_39
    move v1, v3

    :goto_24
    iget v3, v0, Lm2/g;->c:I

    if-lez v3, :cond_3a

    sub-float/2addr v4, v1

    add-int/2addr v3, v15

    int-to-float v1, v3

    :goto_25
    div-float/2addr v4, v1

    goto :goto_26

    :cond_3a
    sub-float/2addr v4, v1

    const/16 v1, 0x14

    int-to-float v1, v1

    goto :goto_25

    :goto_26
    if-eqz v2, :cond_3b

    neg-float v4, v4

    :cond_3b
    iget-object v1, v9, Lm2/a;->b:Lt8/e;

    check-cast v1, Li9/c;

    if-eqz v1, :cond_0

    iget v0, v0, Lm2/g;->a:F

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3c
    iget-object v0, v8, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->c:Le2/s;

    invoke-static {v0}, Lc2/x;->e(Lc2/u;)Ll1/c;

    move-result-object v0

    invoke-virtual {v0}, Ll1/c;->d()J

    move-result-wide v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lm2/l;->C:Lm2/w;

    invoke-virtual {v13, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3d

    const/4 v11, 0x0

    :cond_3d
    check-cast v11, Lm2/a;

    if-eqz v11, :cond_3e

    iget-object v11, v11, Lm2/a;->b:Lt8/e;

    check-cast v11, Li9/c;

    if-eqz v11, :cond_3e

    invoke-interface {v11, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3e

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_27

    :cond_3e
    const/4 v0, 0x0

    :goto_27
    sget-object v11, Lm2/l;->d:Lm2/w;

    invoke-virtual {v13, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3f

    const/4 v11, 0x0

    :cond_3f
    check-cast v11, Lm2/a;

    if-nez v11, :cond_40

    goto/16 :goto_0

    :cond_40
    iget-object v11, v11, Lm2/a;->b:Lt8/e;

    sget-object v12, Lm2/t;->u:Lm2/w;

    invoke-virtual {v13, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_41

    const/4 v12, 0x0

    :cond_41
    check-cast v12, Lm2/i;

    if-eqz v12, :cond_4d

    if-eqz v7, :cond_4d

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 p2, v0

    move/from16 p1, v1

    goto :goto_28

    :cond_42
    const/16 v7, 0x20

    move-object/from16 p2, v0

    move/from16 p1, v1

    shr-long v0, v9, v7

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    :goto_28
    if-nez v3, :cond_43

    if-eqz v2, :cond_44

    :cond_43
    neg-float v7, v7

    :cond_44
    iget-object v0, v8, Le2/g0;->L:Lb3/m;

    sget-object v1, Lb3/m;->m:Lb3/m;

    if-ne v0, v1, :cond_45

    goto :goto_29

    :cond_45
    const/4 v15, 0x0

    :goto_29
    if-eqz v15, :cond_47

    if-nez v3, :cond_46

    if-eqz v4, :cond_47

    :cond_46
    neg-float v7, v7

    :cond_47
    invoke-static {v12, v7}, Lf2/e0;->q(Lm2/i;F)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lm2/l;->z:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    sget-object v1, Lm2/l;->B:Lm2/w;

    invoke-virtual {v13, v1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_2a

    :cond_48
    check-cast v11, Li9/e;

    if-eqz v11, :cond_0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v0, v6}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_49
    :goto_2a
    cmpl-float v1, v7, p0

    if-lez v1, :cond_4b

    sget-object v0, Lm2/l;->B:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4a

    const/4 v15, 0x0

    goto :goto_2b

    :cond_4a
    move-object v15, v0

    :goto_2b
    check-cast v15, Lm2/a;

    goto :goto_2d

    :cond_4b
    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4c

    const/4 v15, 0x0

    goto :goto_2c

    :cond_4c
    move-object v15, v0

    :goto_2c
    check-cast v15, Lm2/a;

    :goto_2d
    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4d
    move-object/from16 p2, v0

    move/from16 p1, v1

    :cond_4e
    sget-object v0, Lm2/t;->v:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4f

    const/4 v0, 0x0

    :cond_4f
    check-cast v0, Lm2/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_50

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2e

    :cond_50
    const-wide v3, 0xffffffffL

    and-long/2addr v3, v9

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    :goto_2e
    if-nez v5, :cond_51

    if-eqz v2, :cond_52

    :cond_51
    neg-float v1, v1

    :cond_52
    invoke-static {v0, v1}, Lf2/e0;->q(Lm2/i;F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lm2/l;->y:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    sget-object v2, Lm2/l;->A:Lm2/w;

    invoke-virtual {v13, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_2f

    :cond_53
    check-cast v11, Li9/e;

    if-eqz v11, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v11, v6, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_54
    :goto_2f
    cmpl-float v1, v1, p0

    if-lez v1, :cond_56

    sget-object v0, Lm2/l;->A:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_55

    const/4 v15, 0x0

    goto :goto_30

    :cond_55
    move-object v15, v0

    :goto_30
    check-cast v15, Lm2/a;

    goto :goto_32

    :cond_56
    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_57

    const/4 v15, 0x0

    goto :goto_31

    :cond_57
    move-object v15, v0

    :goto_31
    check-cast v15, Lm2/a;

    :goto_32
    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_a
    sget-object v0, Lm2/l;->c:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_58

    const/4 v15, 0x0

    goto :goto_33

    :cond_58
    move-object v15, v0

    :goto_33
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :sswitch_b
    sget-object v1, Lm2/l;->b:Lm2/w;

    invoke-virtual {v13, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_59

    const/4 v1, 0x0

    :cond_59
    check-cast v1, Lm2/a;

    if-eqz v1, :cond_5a

    iget-object v1, v1, Lm2/a;->b:Lt8/e;

    check-cast v1, Li9/a;

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object/from16 v16, v1

    :goto_34
    const/16 v1, 0xc

    const/4 v3, 0x0

    goto :goto_35

    :cond_5a
    const/16 v16, 0x0

    goto :goto_34

    :goto_35
    invoke-static {v2, v0, v15, v3, v1}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5b
    sget-object v0, Lm2/t;->k:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5c

    const/4 v0, 0x0

    :cond_5c
    invoke-static {v0, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    const/16 v1, 0x8

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v15}, Lk1/o;->b(IZZ)Z

    return v15

    :cond_5d
    invoke-virtual {v7}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v7}, Landroid/view/View;->requestFocusFromTouch()Z

    :cond_5e
    sget-object v0, Lm2/l;->w:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5f

    const/4 v15, 0x0

    goto :goto_36

    :cond_5f
    move-object v15, v0

    :goto_36
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_60
    if-eqz v3, :cond_61

    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v3, v0, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_37

    :cond_61
    move v0, v14

    :goto_37
    if-eqz v3, :cond_62

    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v3, v1, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    :cond_62
    const/4 v1, 0x0

    invoke-virtual {v2, v11, v0, v14, v1}, Lf2/e0;->D(Lm2/p;IIZ)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {v2, v10}, Lf2/e0;->t(I)I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    :cond_63
    return v0

    :cond_64
    sget-object v0, Lm2/l;->q:Lm2/w;

    invoke-virtual {v13, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_65

    const/4 v15, 0x0

    goto :goto_38

    :cond_65
    move-object v15, v0

    :goto_38
    check-cast v15, Lm2/a;

    if-eqz v15, :cond_0

    iget-object v0, v15, Lm2/a;->b:Lt8/e;

    check-cast v0, Li9/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_66
    if-eqz v3, :cond_0

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v1, v4, :cond_67

    move v1, v15

    goto :goto_39

    :cond_67
    const/4 v1, 0x0

    :goto_39
    iget-object v5, v2, Lf2/e0;->G:Ljava/lang/Integer;

    if-nez v5, :cond_68

    goto :goto_3a

    :cond_68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v10, v5, :cond_69

    :goto_3a
    iput v14, v2, Lf2/e0;->F:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lf2/e0;->G:Ljava/lang/Integer;

    :cond_69
    invoke-static {v11}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6a

    goto/16 :goto_0

    :cond_6a
    invoke-static {v11}, Lf2/e0;->m(Lm2/p;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6b

    goto :goto_3b

    :cond_6b
    if-eq v0, v15, :cond_77

    const/4 v8, 0x2

    if-eq v0, v8, :cond_75

    const/4 v7, 0x4

    if-eq v0, v7, :cond_6f

    const/16 v8, 0x8

    if-eq v0, v8, :cond_6d

    const/16 v8, 0x10

    if-eq v0, v8, :cond_6f

    :cond_6c
    :goto_3b
    const/4 v7, 0x0

    goto/16 :goto_3c

    :cond_6d
    sget-object v7, Lf2/f;->c:Lf2/f;

    if-nez v7, :cond_6e

    new-instance v7, Lf2/f;

    invoke-direct {v7}, Lf2/b;-><init>()V

    sput-object v7, Lf2/f;->c:Lf2/f;

    :cond_6e
    sget-object v7, Lf2/f;->c:Lf2/f;

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.ParagraphTextSegmentIterator"

    invoke-static {v7, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v7, Lf2/b;->a:Ljava/lang/Object;

    goto/16 :goto_3c

    :cond_6f
    sget-object v8, Lm2/l;->a:Lm2/w;

    invoke-virtual {v13, v8}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_70

    goto :goto_3b

    :cond_70
    invoke-static {v12}, Lf2/k0;->k(Lm2/m;)Lp2/j0;

    move-result-object v8

    if-nez v8, :cond_71

    goto :goto_3b

    :cond_71
    if-ne v0, v7, :cond_73

    sget-object v7, Lf2/d;->d:Lf2/d;

    if-nez v7, :cond_72

    new-instance v7, Lf2/d;

    invoke-direct {v7}, Lf2/b;-><init>()V

    sput-object v7, Lf2/d;->d:Lf2/d;

    :cond_72
    sget-object v7, Lf2/d;->d:Lf2/d;

    const-string v10, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator"

    invoke-static {v7, v10}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v7, Lf2/b;->a:Ljava/lang/Object;

    iput-object v8, v7, Lf2/d;->c:Lp2/j0;

    goto :goto_3c

    :cond_73
    sget-object v7, Lf2/e;->e:Lf2/e;

    if-nez v7, :cond_74

    new-instance v7, Lf2/e;

    invoke-direct {v7}, Lf2/b;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    sput-object v7, Lf2/e;->e:Lf2/e;

    :cond_74
    sget-object v7, Lf2/e;->e:Lf2/e;

    const-string v10, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator"

    invoke-static {v7, v10}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v7, Lf2/b;->a:Ljava/lang/Object;

    iput-object v8, v7, Lf2/e;->c:Lp2/j0;

    iput-object v11, v7, Lf2/e;->d:Lm2/p;

    goto :goto_3c

    :cond_75
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v8, Lf2/c;->f:Lf2/c;

    if-nez v8, :cond_76

    new-instance v8, Lf2/c;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lf2/c;-><init>(I)V

    invoke-static {v7}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v7

    iput-object v7, v8, Lf2/c;->d:Ljava/text/BreakIterator;

    sput-object v8, Lf2/c;->f:Lf2/c;

    :cond_76
    sget-object v7, Lf2/c;->f:Lf2/c;

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.WordTextSegmentIterator"

    invoke-static {v7, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lf2/c;->g(Ljava/lang/String;)V

    goto :goto_3c

    :cond_77
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v8, Lf2/c;->e:Lf2/c;

    if-nez v8, :cond_78

    new-instance v8, Lf2/c;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lf2/c;-><init>(I)V

    invoke-static {v7}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v7

    iput-object v7, v8, Lf2/c;->d:Ljava/text/BreakIterator;

    sput-object v8, Lf2/c;->e:Lf2/c;

    :cond_78
    sget-object v7, Lf2/c;->e:Lf2/c;

    const-string v8, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.CharacterTextSegmentIterator"

    invoke-static {v7, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lf2/c;->g(Ljava/lang/String;)V

    :goto_3c
    if-nez v7, :cond_79

    goto/16 :goto_0

    :cond_79
    invoke-virtual {v2, v11}, Lf2/e0;->j(Lm2/p;)I

    move-result v6

    if-ne v6, v14, :cond_7b

    if-eqz v1, :cond_7a

    const/4 v5, 0x0

    goto :goto_3d

    :cond_7a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_3d
    move v6, v5

    :cond_7b
    if-eqz v1, :cond_7c

    invoke-virtual {v7, v6}, Lf2/b;->b(I)[I

    move-result-object v5

    goto :goto_3e

    :cond_7c
    invoke-virtual {v7, v6}, Lf2/b;->e(I)[I

    move-result-object v5

    :goto_3e
    if-nez v5, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v17, 0x0

    aget v6, v5, v17

    aget v5, v5, v15

    if-eqz v3, :cond_81

    sget-object v3, Lm2/t;->a:Lm2/w;

    invoke-virtual {v13, v3}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    sget-object v3, Lm2/t;->F:Lm2/w;

    invoke-virtual {v13, v3}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {v2, v11}, Lf2/e0;->k(Lm2/p;)I

    move-result v3

    if-ne v3, v14, :cond_7f

    if-eqz v1, :cond_7e

    move v3, v6

    goto :goto_3f

    :cond_7e
    move v3, v5

    :cond_7f
    :goto_3f
    if-eqz v1, :cond_80

    move v7, v5

    goto :goto_41

    :cond_80
    move v7, v6

    goto :goto_41

    :cond_81
    if-eqz v1, :cond_82

    move v3, v5

    goto :goto_40

    :cond_82
    move v3, v6

    :goto_40
    move v7, v3

    :goto_41
    if-eqz v1, :cond_83

    move v12, v4

    goto :goto_42

    :cond_83
    move v12, v9

    :goto_42
    new-instance v10, Lf2/a0;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move v13, v0

    move v14, v6

    move v1, v15

    move v15, v5

    invoke-direct/range {v10 .. v17}, Lf2/a0;-><init>(Lm2/p;IIIIJ)V

    iput-object v10, v2, Lf2/e0;->K:Lf2/a0;

    invoke-virtual {v2, v11, v3, v7, v1}, Lf2/e0;->D(Lm2/p;IIZ)Z

    return v1

    :cond_84
    move v1, v15

    iget v3, v2, Lf2/e0;->w:I

    if-ne v3, v0, :cond_85

    move v15, v1

    goto :goto_43

    :cond_85
    const/4 v15, 0x0

    :goto_43
    if-eqz v15, :cond_0

    iput v14, v2, Lf2/e0;->w:I

    const/4 v3, 0x0

    iput-object v3, v2, Lf2/e0;->y:Lr3/g;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    const/high16 v4, 0x10000

    const/16 v5, 0xc

    invoke-static {v2, v0, v4, v3, v5}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    return v1

    :cond_86
    move v1, v15

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_87

    move v15, v1

    goto :goto_44

    :cond_87
    const/4 v15, 0x0

    :goto_44
    if-nez v15, :cond_88

    goto/16 :goto_0

    :cond_88
    iget v3, v2, Lf2/e0;->w:I

    if-ne v3, v0, :cond_89

    move v15, v1

    goto :goto_45

    :cond_89
    const/4 v15, 0x0

    :goto_45
    if-nez v15, :cond_0

    if-eq v3, v14, :cond_8a

    const/high16 v4, 0x10000

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    goto :goto_46

    :cond_8a
    const/16 v5, 0xc

    const/4 v6, 0x0

    :goto_46
    iput v0, v2, Lf2/e0;->w:I

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    const v3, 0x8000

    invoke-static {v2, v0, v3, v6, v5}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    return v1

    :goto_47
    return v17

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x40000 -> :sswitch_6
        0x80000 -> :sswitch_5
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_3
        0x1020036 -> :sswitch_2
        0x102003d -> :sswitch_1
        0x1020054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020038
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020046
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
