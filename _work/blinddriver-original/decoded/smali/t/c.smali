.class public abstract Lt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lt/c;->a:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public static final a(Lp2/g;)Lf2/f1;
    .locals 21

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v0, Lp2/g;->n:Ljava/util/ArrayList;

    new-instance v2, Lf2/f1;

    sget-object v3, Lu8/r;->l:Lu8/r;

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-object/from16 v16, v2

    goto/16 :goto_6

    :cond_2
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lt/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, v0, Lt/a;->a:Landroid/os/Parcel;

    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_16

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp2/e;

    iget-object v8, v7, Lp2/e;->a:Ljava/lang/Object;

    check-cast v8, Lp2/e0;

    iget v9, v7, Lp2/e;->b:I

    iget v7, v7, Lp2/e;->c:I

    iget-object v10, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    iput-object v10, v0, Lt/a;->a:Landroid/os/Parcel;

    iget-object v10, v8, Lp2/e0;->a:La3/o;

    iget-wide v11, v8, Lp2/e0;->l:J

    iget-wide v13, v8, Lp2/e0;->h:J

    move v15, v6

    iget-wide v5, v8, Lp2/e0;->b:J

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-interface {v10}, La3/o;->a()J

    move-result-wide v1

    move/from16 v18, v3

    move-object v10, v4

    sget-wide v3, Lm1/p;->g:J

    invoke-static {v1, v2, v3, v4}, Lm1/p;->c(JJ)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Lt/a;->c(B)V

    iget-object v1, v8, Lp2/e0;->a:La3/o;

    move-wide/from16 v19, v3

    invoke-interface {v1}, La3/o;->a()J

    move-result-wide v2

    iget-object v1, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v3

    :goto_3
    sget-wide v1, Lb3/o;->c:J

    invoke-static {v5, v6, v1, v2}, Lb3/o;->a(JJ)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_5

    invoke-virtual {v0, v4}, Lt/a;->c(B)V

    invoke-virtual {v0, v5, v6}, Lt/a;->e(J)V

    :cond_5
    iget-object v3, v8, Lp2/e0;->c:Lt2/k;

    const/4 v5, 0x3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v5}, Lt/a;->c(B)V

    iget v3, v3, Lt2/k;->l:I

    iget-object v6, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    iget-object v3, v8, Lp2/e0;->d:Lt2/i;

    if-eqz v3, :cond_9

    iget v3, v3, Lt2/i;->a:I

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lt/a;->c(B)V

    if-nez v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v0, v3}, Lt/a;->c(B)V

    :cond_9
    iget-object v3, v8, Lp2/e0;->e:Lt2/j;

    if-eqz v3, :cond_e

    iget v3, v3, Lt2/j;->a:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lt/a;->c(B)V

    if-nez v3, :cond_b

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const v6, 0xffff

    if-ne v3, v6, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    goto :goto_5

    :cond_d
    if-ne v3, v4, :cond_a

    move v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Lt/a;->c(B)V

    :cond_e
    iget-object v3, v8, Lp2/e0;->g:Ljava/lang/String;

    if-eqz v3, :cond_f

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lt/a;->c(B)V

    iget-object v4, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_f
    invoke-static {v13, v14, v1, v2}, Lb3/o;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lt/a;->c(B)V

    invoke-virtual {v0, v13, v14}, Lt/a;->e(J)V

    :cond_10
    iget-object v1, v8, Lp2/e0;->i:La3/a;

    if-eqz v1, :cond_11

    iget v1, v1, La3/a;->a:F

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lt/a;->c(B)V

    invoke-virtual {v0, v1}, Lt/a;->d(F)V

    :cond_11
    iget-object v1, v8, Lp2/e0;->j:La3/p;

    if-eqz v1, :cond_12

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lt/a;->c(B)V

    iget v2, v1, La3/p;->a:F

    invoke-virtual {v0, v2}, Lt/a;->d(F)V

    iget v1, v1, La3/p;->b:F

    invoke-virtual {v0, v1}, Lt/a;->d(F)V

    :cond_12
    move-wide/from16 v1, v19

    invoke-static {v11, v12, v1, v2}, Lm1/p;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lt/a;->c(B)V

    iget-object v1, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    :cond_13
    iget-object v1, v8, Lp2/e0;->m:La3/l;

    if-eqz v1, :cond_14

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lt/a;->c(B)V

    iget v1, v1, La3/l;->a:I

    iget-object v2, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_14
    iget-object v1, v8, Lp2/e0;->n:Lm1/g0;

    if-eqz v1, :cond_15

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lt/a;->c(B)V

    iget-wide v2, v1, Lm1/g0;->a:J

    iget-object v4, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v4, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v1, Lm1/g0;->b:J

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v0, v4}, Lt/a;->d(F)V

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lt/a;->d(F)V

    iget v1, v1, Lm1/g0;->c:F

    invoke-virtual {v0, v1}, Lt/a;->d(F)V

    :cond_15
    new-instance v1, Landroid/text/Annotation;

    iget-object v2, v0, Lt/a;->a:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidx.compose.text.SpanStyle"

    invoke-direct {v1, v4, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {v10, v1, v9, v7, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v15, 0x1

    move-object v4, v10

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_2

    :cond_16
    move-object v10, v4

    move-object v0, v10

    goto/16 :goto_1

    :goto_6
    const-string v1, "plain text"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Lf2/f1;-><init>(Landroid/content/ClipData;)V

    return-object v1
.end method
