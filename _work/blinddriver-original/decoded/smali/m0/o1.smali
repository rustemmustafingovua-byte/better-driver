.class public final Lm0/o1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lm0/v1;


# direct methods
.method public synthetic constructor <init>(Lm0/v1;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lm0/o1;->l:I

    iput-object p1, p0, Lm0/o1;->n:Lm0/v1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lm0/o1;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lm0/o1;

    iget-object p0, p0, Lm0/o1;->n:Lm0/v1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lm0/o1;

    iget-object p0, p0, Lm0/o1;->n:Lm0/v1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance v0, Lm0/o1;

    iget-object p0, p0, Lm0/o1;->n:Lm0/v1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    check-cast p1, Ll1/b;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm0/o1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lm0/o1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/o1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/o1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lm0/o1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/o1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/o1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    check-cast p2, Ly8/c;

    new-instance p1, Lm0/o1;

    iget-object p0, p0, Lm0/o1;->n:Lm0/v1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lm0/o1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    move-object/from16 v0, p0

    iget v1, v0, Lm0/o1;->l:I

    const/4 v2, 0x2

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v5, 0x1

    iget-object v6, v0, Lm0/o1;->n:Lm0/v1;

    sget-object v7, Lt8/z;->a:Lt8/z;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v8, v0, Lm0/o1;->m:I

    if-eqz v8, :cond_2

    if-eq v8, v5, :cond_1

    if-ne v8, v2, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_11

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v6, Lm0/v1;->h:Lf2/g1;

    if-eqz v4, :cond_29

    iput v5, v0, Lm0/o1;->m:I

    check-cast v4, Lf2/i;

    iget-object v4, v4, Lf2/i;->a:Lf2/j;

    iget-object v4, v4, Lf2/j;->a:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v8, Lf2/f1;

    invoke-direct {v8, v4}, Lf2/f1;-><init>(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    if-ne v8, v1, :cond_4

    goto/16 :goto_10

    :cond_4
    :goto_1
    check-cast v8, Lf2/f1;

    if-eqz v8, :cond_29

    iput v2, v0, Lm0/o1;->m:I

    iget-object v0, v8, Lf2/f1;->a:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_25

    instance-of v8, v0, Landroid/text/Spanned;

    if-nez v8, :cond_5

    new-instance v2, Lp2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lp2/g;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_f

    :cond_5
    move-object v8, v0

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Landroid/text/Annotation;

    invoke-interface {v8, v4, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/Annotation;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "<this>"

    invoke-static {v9, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v9

    sub-int/2addr v11, v5

    if-ltz v11, :cond_22

    move v12, v4

    :goto_2
    aget-object v13, v9, v12

    invoke-virtual {v13}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v14

    const-string v15, "androidx.compose.text.SpanStyle"

    invoke-static {v14, v15}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 p1, v0

    move/from16 p0, v4

    goto/16 :goto_d

    :cond_6
    invoke-interface {v8, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-interface {v8, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    new-instance v3, Lt/a;

    invoke-virtual {v13}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, v3, Lt/a;->a:Landroid/os/Parcel;

    invoke-static {v13, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    array-length v5, v13

    invoke-virtual {v2, v13, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, v3, Lt/a;->a:Landroid/os/Parcel;

    sget-wide v16, Lm1/p;->g:J

    sget-wide v18, Lb3/o;->c:J

    move-wide/from16 v21, v16

    move-wide/from16 v35, v21

    move-wide/from16 v23, v18

    move-wide/from16 v30, v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    const/4 v13, 0x1

    if-le v5, v13, :cond_20

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    move/from16 p0, v4

    const/16 v4, 0x8

    if-ne v5, v13, :cond_8

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lt v5, v4, :cond_7

    invoke-virtual {v3}, Lt/a;->a()J

    move-result-wide v21

    :goto_4
    move/from16 v4, p0

    goto :goto_3

    :cond_7
    move-object/from16 p1, v0

    goto/16 :goto_c

    :cond_8
    const/4 v13, 0x5

    const/4 v4, 0x2

    if-ne v5, v4, :cond_9

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lt v4, v13, :cond_7

    invoke-virtual {v3}, Lt/a;->b()J

    move-result-wide v23

    goto :goto_4

    :cond_9
    const/4 v4, 0x3

    const/4 v13, 0x4

    if-ne v5, v4, :cond_a

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lt v4, v13, :cond_7

    new-instance v4, Lt2/k;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v4, v5}, Lt2/k;-><init>(I)V

    move-object/from16 v25, v4

    goto :goto_4

    :cond_a
    if-ne v5, v13, :cond_d

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_7

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    move/from16 v4, p0

    goto :goto_5

    :cond_c
    if-ne v4, v5, :cond_b

    move v4, v5

    :goto_5
    new-instance v13, Lt2/i;

    invoke-direct {v13, v4}, Lt2/i;-><init>(I)V

    move/from16 v4, p0

    move-object/from16 v26, v13

    goto :goto_3

    :cond_d
    const/4 v4, 0x5

    const/4 v13, 0x1

    if-ne v5, v4, :cond_12

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lt v4, v13, :cond_7

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    move/from16 v4, p0

    goto :goto_6

    :cond_f
    if-ne v4, v13, :cond_10

    const v4, 0xffff

    goto :goto_6

    :cond_10
    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    const/4 v4, 0x2

    goto :goto_6

    :cond_11
    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    :goto_6
    new-instance v5, Lt2/j;

    invoke-direct {v5, v4}, Lt2/j;-><init>(I)V

    move/from16 v4, p0

    move-object/from16 v27, v5

    goto/16 :goto_3

    :cond_12
    const/4 v4, 0x6

    if-ne v5, v4, :cond_13

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    goto :goto_4

    :cond_13
    const/4 v4, 0x7

    if-ne v5, v4, :cond_14

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_7

    invoke-virtual {v3}, Lt/a;->b()J

    move-result-wide v30

    goto/16 :goto_4

    :cond_14
    const/16 v4, 0x8

    if-ne v5, v4, :cond_15

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    new-instance v5, La3/a;

    invoke-direct {v5, v4}, La3/a;-><init>(F)V

    move/from16 v4, p0

    move-object/from16 v32, v5

    goto/16 :goto_3

    :cond_15
    const/16 v13, 0x9

    if-ne v5, v13, :cond_16

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lt v5, v4, :cond_7

    new-instance v4, La3/p;

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    invoke-direct {v4, v5, v13}, La3/p;-><init>(FF)V

    move-object/from16 v33, v4

    goto/16 :goto_4

    :cond_16
    const/16 v13, 0xa

    if-ne v5, v13, :cond_17

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v5

    if-lt v5, v4, :cond_7

    invoke-virtual {v3}, Lt/a;->a()J

    move-result-wide v35

    goto/16 :goto_4

    :cond_17
    const/16 v4, 0xb

    if-ne v5, v4, :cond_1f

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_7

    :cond_18
    move/from16 v5, p0

    :goto_7
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_8

    :cond_19
    move/from16 v4, p0

    :goto_8
    sget-object v13, La3/l;->d:La3/l;

    move-object/from16 p1, v0

    sget-object v0, La3/l;->c:La3/l;

    if-eqz v5, :cond_1b

    if-eqz v4, :cond_1b

    filled-new-array {v13, v0}, [La3/l;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    move/from16 v13, p0

    :goto_9
    if-ge v13, v5, :cond_1a

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, La3/l;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v0, v0, La3/l;->a:I

    or-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    goto :goto_9

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v4, La3/l;

    invoke-direct {v4, v0}, La3/l;-><init>(I)V

    move-object/from16 v37, v4

    goto :goto_b

    :cond_1b
    if-eqz v5, :cond_1c

    move-object/from16 v37, v13

    goto :goto_b

    :cond_1c
    if-eqz v4, :cond_1d

    :goto_a
    move-object/from16 v37, v0

    goto :goto_b

    :cond_1d
    sget-object v0, La3/l;->b:La3/l;

    goto :goto_a

    :cond_1e
    :goto_b
    move/from16 v4, p0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_1f
    move-object/from16 p1, v0

    const/16 v0, 0xc

    if-ne v5, v0, :cond_1e

    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const/16 v4, 0x14

    if-lt v0, v4, :cond_21

    new-instance v39, Lm1/g0;

    invoke-virtual {v3}, Lt/a;->a()J

    move-result-wide v40

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-object v13, v2

    move-object v5, v3

    int-to-long v2, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide/from16 v16, v2

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long v16, v16, v0

    const-wide v18, 0xffffffffL

    and-long v2, v2, v18

    or-long v42, v16, v2

    invoke-virtual {v13}, Landroid/os/Parcel;->readFloat()F

    move-result v44

    invoke-direct/range {v39 .. v44}, Lm1/g0;-><init>(JJF)V

    move/from16 v4, p0

    move-object/from16 v0, p1

    move-object v3, v5

    move-object v2, v13

    move-object/from16 v38, v39

    goto/16 :goto_3

    :cond_20
    move-object/from16 p1, v0

    move/from16 p0, v4

    :cond_21
    :goto_c
    new-instance v20, Lp2/e0;

    const v39, 0xc000

    const/16 v28, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v20 .. v39}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v0, v20

    new-instance v2, Lp2/e;

    invoke-direct {v2, v14, v15, v0}, Lp2/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    if-eq v12, v11, :cond_23

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, p0

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_22
    move-object/from16 p1, v0

    :cond_23
    new-instance v0, Lp2/g;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lp2/h;->a:Lp2/g;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    goto :goto_e

    :cond_24
    move-object v3, v10

    :goto_e
    invoke-direct {v0, v3, v2}, Lp2/g;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    const/4 v0, 0x0

    :goto_f
    if-ne v0, v1, :cond_26

    :goto_10
    move-object v7, v1

    goto :goto_12

    :cond_26
    :goto_11
    check-cast v0, Lp2/g;

    if-nez v0, :cond_27

    goto :goto_12

    :cond_27
    invoke-virtual {v6}, Lm0/v1;->j()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_12

    :cond_28
    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    iget-object v2, v2, Lu2/x;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lpc/h;->o(Lu2/x;I)Lp2/g;

    move-result-object v1

    new-instance v2, Lp2/d;

    invoke-direct {v2, v1}, Lp2/d;-><init>(Lp2/g;)V

    invoke-virtual {v2, v0}, Lp2/d;->a(Lp2/g;)V

    invoke-virtual {v2}, Lp2/d;->e()Lp2/g;

    move-result-object v1

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v3

    iget-object v3, v3, Lu2/x;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lpc/h;->n(Lu2/x;I)Lp2/g;

    move-result-object v2

    new-instance v3, Lp2/d;

    invoke-direct {v3, v1}, Lp2/d;-><init>(Lp2/g;)V

    invoke-virtual {v3, v2}, Lp2/d;->a(Lp2/g;)V

    invoke-virtual {v3}, Lp2/d;->e()Lp2/g;

    move-result-object v1

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    iget-wide v2, v2, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->f(J)I

    move-result v2

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0, v0}, Lp2/d0;->b(II)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v0

    iget-object v1, v6, Lm0/v1;->c:Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {v6, v0}, Lm0/v1;->q(Lb0/e1;)V

    iget-object v0, v6, Lm0/v1;->a:Lb0/h3;

    const/4 v13, 0x1

    iput-boolean v13, v0, Lb0/h3;->e:Z

    :cond_29
    :goto_12
    return-object v7

    :pswitch_0
    move v13, v5

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/o1;->m:I

    if-eqz v2, :cond_2b

    if-ne v2, v13, :cond_2a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    iget-wide v2, v2, Lu2/x;->b:J

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v6}, Lm0/v1;->j()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v6, Lm0/v1;->f:Lu2/d0;

    instance-of v2, v2, Lu2/r;

    if-nez v2, :cond_2c

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    invoke-static {v2}, Lpc/h;->m(Lu2/x;)Lp2/g;

    move-result-object v3

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v2

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v4

    iget-object v4, v4, Lu2/x;->a:Lp2/g;

    iget-object v4, v4, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v4}, Lpc/h;->o(Lu2/x;I)Lp2/g;

    move-result-object v2

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v4

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v5

    iget-object v5, v5, Lu2/x;->a:Lp2/g;

    iget-object v5, v5, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Lpc/h;->n(Lu2/x;I)Lp2/g;

    move-result-object v4

    new-instance v5, Lp2/d;

    invoke-direct {v5, v2}, Lp2/d;-><init>(Lp2/g;)V

    invoke-virtual {v5, v4}, Lp2/d;->a(Lp2/g;)V

    invoke-virtual {v5}, Lp2/d;->e()Lp2/g;

    move-result-object v2

    invoke-virtual {v6}, Lm0/v1;->n()Lu2/x;

    move-result-object v4

    iget-wide v4, v4, Lu2/x;->b:J

    invoke-static {v4, v5}, Lp2/l0;->f(J)I

    move-result v4

    invoke-static {v4, v4}, Lp2/d0;->b(II)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v2

    iget-object v4, v6, Lm0/v1;->c:Li9/c;

    invoke-interface {v4, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lb0/e1;->l:Lb0/e1;

    invoke-virtual {v6, v2}, Lm0/v1;->q(Lb0/e1;)V

    iget-object v2, v6, Lm0/v1;->a:Lb0/h3;

    const/4 v13, 0x1

    iput-boolean v13, v2, Lb0/h3;->e:Z

    goto :goto_13

    :cond_2c
    const/4 v13, 0x1

    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_2d

    goto :goto_14

    :cond_2d
    iget-object v2, v6, Lm0/v1;->h:Lf2/g1;

    if-eqz v2, :cond_2e

    invoke-static {v3}, Lt/c;->a(Lp2/g;)Lf2/f1;

    move-result-object v3

    iput v13, v0, Lm0/o1;->m:I

    check-cast v2, Lf2/i;

    invoke-virtual {v2, v3}, Lf2/i;->a(Lf2/f1;)V

    if-ne v7, v1, :cond_2e

    move-object v7, v1

    :cond_2e
    :goto_14
    return-object v7

    :pswitch_1
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lm0/o1;->m:I

    const/4 v13, 0x1

    if-eqz v2, :cond_31

    if-eq v2, v13, :cond_30

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2f

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_18

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_15

    :cond_31
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v13, v0, Lm0/o1;->m:I

    invoke-virtual {v6, v0}, Lm0/v1;->s(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_32

    goto :goto_17

    :cond_32
    :goto_15
    invoke-static {v6}, Lm0/v1;->a(Lm0/v1;)Lt8/j;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Lp2/l0;

    iget-wide v4, v2, Lp2/l0;->a:J

    iget-object v2, v6, Lm0/v1;->j:Lm0/u;

    if-eqz v2, :cond_34

    const/4 v6, 0x2

    iput v6, v0, Lm0/o1;->m:I

    invoke-virtual {v2, v3, v4, v5, v0}, Lm0/u;->c(Ljava/lang/CharSequence;JLa9/i;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_33

    goto :goto_16

    :cond_33
    move-object v0, v7

    :goto_16
    if-ne v0, v1, :cond_34

    :goto_17
    move-object v7, v1

    :cond_34
    :goto_18
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
