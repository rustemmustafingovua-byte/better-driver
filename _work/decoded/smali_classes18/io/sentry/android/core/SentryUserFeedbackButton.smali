.class public Lio/sentry/android/core/SentryUserFeedbackButton;
.super Landroid/widget/Button;
.source "SentryUserFeedbackButton.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private delegate:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    move-object/from16 v1, p0

    sget-object v0, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton:[I

    .line 57
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 59
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .local v0, "dimensionScale":F
    sget v7, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_drawablePadding:I

    .line 61
    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 62
    .local v7, "drawablePadding":F
    sget v9, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_drawableStart:I

    .line 63
    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 64
    .local v9, "drawableStart":I
    sget v11, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_textAllCaps:I

    .line 65
    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 66
    .local v11, "textAllCaps":Z
    sget v13, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_background:I

    .line 67
    invoke-virtual {v6, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 68
    .local v13, "background":I
    sget v14, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_padding:I

    .line 69
    invoke-virtual {v6, v14, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 70
    .local v14, "padding":F
    sget v15, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_textColor:I

    .line 71
    invoke-virtual {v6, v15, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 72
    .local v15, "textColor":I
    move/from16 v16, v8

    sget v8, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_text:I

    .line 73
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "text":Ljava/lang/String;
    cmpl-float v17, v7, v16

    if-nez v17, :cond_0

    .line 77
    const/high16 v17, 0x40800000    # 4.0f

    mul-float v12, v0, v17

    float-to-int v12, v12

    invoke-virtual {v1, v12}, Lio/sentry/android/core/SentryUserFeedbackButton;->setCompoundDrawablePadding(I)V

    .line 81
    :cond_0
    if-ne v9, v10, :cond_1

    .line 82
    sget v12, Lio/sentry/android/core/R$drawable;->sentry_user_feedback_button_logo_24:I

    const/4 v10, 0x0

    invoke-virtual {v1, v12, v10, v10, v10}, Lio/sentry/android/core/SentryUserFeedbackButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 87
    :cond_1
    invoke-virtual {v1, v11}, Lio/sentry/android/core/SentryUserFeedbackButton;->setAllCaps(Z)V

    .line 90
    const/4 v10, -0x1

    if-ne v13, v10, :cond_2

    .line 91
    sget v10, Lio/sentry/android/core/R$drawable;->sentry_oval_button_ripple_background:I

    invoke-virtual {v1, v10}, Lio/sentry/android/core/SentryUserFeedbackButton;->setBackgroundResource(I)V

    .line 95
    :cond_2
    cmpl-float v10, v14, v16

    if-nez v10, :cond_3

    .line 96
    const/high16 v10, 0x41400000    # 12.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    .line 97
    .local v10, "defaultPadding":I
    invoke-virtual {v1, v10, v10, v10, v10}, Lio/sentry/android/core/SentryUserFeedbackButton;->setPadding(IIII)V

    .line 101
    .end local v10    # "defaultPadding":I
    :cond_3
    const/4 v10, -0x1

    if-ne v15, v10, :cond_4

    .line 103
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .local v10, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    move/from16 v16, v0

    .end local v0    # "dimensionScale":F
    .local v16, "dimensionScale":F
    const v0, 0x1010030

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v10, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    nop

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->setTextColor(I)V

    goto :goto_0

    .line 101
    .end local v10    # "typedValue":Landroid/util/TypedValue;
    .end local v16    # "dimensionScale":F
    .restart local v0    # "dimensionScale":F
    :cond_4
    move/from16 v16, v0

    .line 113
    .end local v0    # "dimensionScale":F
    .restart local v16    # "dimensionScale":F
    :goto_0
    if-nez v8, :cond_5

    .line 114
    const-string v0, "Report a Bug"

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v7    # "drawablePadding":F
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "drawableStart":I
    .end local v11    # "textAllCaps":Z
    .end local v13    # "background":I
    .end local v14    # "padding":F
    .end local v15    # "textColor":I
    .end local v16    # "dimensionScale":F
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    .end local v6    # "typedArray":Landroid/content/res/TypedArray;
    :cond_6
    iget-object v0, v1, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void

    .line 56
    .restart local v6    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_7

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v2
.end method


# virtual methods
.method synthetic lambda$setOnClickListener$0$io-sentry-android-core-SentryUserFeedbackButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 127
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->create()Lio/sentry/android/core/SentryUserFeedbackForm;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->show()V

    .line 128
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 124
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/android/core/SentryUserFeedbackButton$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryUserFeedbackButton;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
