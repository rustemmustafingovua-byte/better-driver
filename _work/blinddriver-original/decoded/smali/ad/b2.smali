.class public final synthetic Lad/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lad/b2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lad/f2;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lad/b2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lad/b2;->l:I

    const/16 v2, 0x20

    const/4 v3, -0x1

    const-wide v4, 0xffffffffL

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    check-cast v0, Ljava/lang/StackTraceElement;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object v0, v1

    check-cast v0, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClassName(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/4 v4, 0x6

    invoke-static {v1, v2, v8, v4}, Lr9/k;->i0(Ljava/lang/String;CII)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "it"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "c"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Led/b;->a:Lr9/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-static {v3}, Led/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v2}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x208

    invoke-static {v3, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ": "

    invoke-static {v1, v3, v2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf9/l;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, Lf9/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "getStackTrace(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object v0

    new-instance v1, Lad/b2;

    const/16 v3, 0x1d

    invoke-direct {v1, v3}, Lad/b2;-><init>(I)V

    new-instance v3, Lq9/q;

    invoke-direct {v3, v0, v1}, Lq9/q;-><init>(Lq9/h;Li9/c;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lq9/h;

    aput-object v2, v0, v8

    aput-object v3, v0, v7

    invoke-static {v0}, Lu8/l;->c0([Ljava/lang/Object;)Lq9/h;

    move-result-object v0

    new-instance v1, Lp2/y;

    invoke-direct {v1, v4}, Lp2/y;-><init>(I)V

    instance-of v2, v0, Lq9/q;

    if-eqz v2, :cond_2

    check-cast v0, Lq9/q;

    new-instance v2, Lq9/g;

    iget-object v3, v0, Lq9/q;->a:Lq9/h;

    iget-object v0, v0, Lq9/q;->b:Li9/c;

    invoke-direct {v2, v3, v0, v1}, Lq9/g;-><init>(Lq9/h;Li9/c;Li9/c;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lq9/g;

    new-instance v3, Lad/b2;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lad/b2;-><init>(I)V

    invoke-direct {v2, v0, v3, v1}, Lq9/g;-><init>(Lq9/h;Li9/c;Li9/c;)V

    :goto_1
    return-object v2

    :pswitch_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "it"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-string v0, "\""

    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x4

    float-to-double v2, v0

    invoke-static {v2, v3, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_5
    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "<destruct>"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "component1(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "component2(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string v2, "?"

    invoke-static {v1, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_6
    const-string v1, "IRN"

    goto :goto_3

    :pswitch_7
    const-string v1, "GAL"

    goto :goto_3

    :pswitch_8
    const-string v1, "BDS"

    goto :goto_3

    :pswitch_9
    const-string v1, "QZS"

    goto :goto_3

    :pswitch_a
    const-string v1, "GLO"

    goto :goto_3

    :pswitch_b
    const-string v1, "SBAS"

    goto :goto_3

    :pswitch_c
    const-string v1, "GPS"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object v0, v1

    check-cast v0, Ld1/m;

    sget-object v0, Ld1/p;->a:Lad/b2;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    sget-object v2, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Ld1/p;->i:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_4
    if-ge v8, v3, :cond_8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li9/c;

    invoke-interface {v4, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_8
    monitor-exit v2

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_5
    monitor-exit v2

    throw v0

    :pswitch_f
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "w"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v8

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcd/h;->b(C)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v8

    :goto_7
    if-ge v3, v2, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-nez v3, :cond_9

    sget-object v9, Lcd/h;->b:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object v9, v6

    :goto_8
    if-nez v9, :cond_a

    sget-object v9, Lcd/h;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_a
    if-nez v9, :cond_b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_b
    const/16 v10, 0x433

    if-ne v5, v10, :cond_d

    if-lez v3, :cond_d

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const/16 v10, 0x437

    if-ne v5, v10, :cond_d

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Gh"

    goto :goto_9

    :cond_c
    const-string v4, "gh"

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_d
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v10, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v10}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "toUpperCase(...)"

    invoke-static {v5, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "substring(...)"

    invoke-static {v5, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_e
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_11
    :goto_b
    return-object v0

    :pswitch_10
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "part"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v1, "it"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v8

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcd/h;->b(C)Z

    move-result v3

    if-eqz v3, :cond_12

    new-array v1, v7, [C

    aput-char v2, v1, v8

    invoke-static {v0, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v9

    const-string v10, " "

    new-instance v13, Lad/b2;

    const/16 v0, 0x14

    invoke-direct {v13, v0}, Lad/b2;-><init>(I)V

    const/16 v14, 0x1e

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    return-object v0

    :pswitch_12
    return-object v1

    :pswitch_13
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lc1/d;

    invoke-direct {v1, v0}, Lc1/d;-><init>(Ljava/util/Map;)V

    return-object v1

    :pswitch_14
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_e
    if-ge v8, v3, :cond_16

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_15

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_14

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    return-object v2

    :pswitch_15
    move-object v0, v1

    check-cast v0, Lm2/x;

    sget-object v1, Lm2/t;->A:Lm2/w;

    sget-object v2, Lt8/z;->a:Lt8/z;

    invoke-interface {v0, v1, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v2

    :pswitch_16
    move-object v0, v1

    check-cast v0, Lp2/e;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation"

    iget-object v2, v0, Lp2/e;->a:Ljava/lang/Object;

    instance-of v3, v2, Lp2/m;

    if-eqz v3, :cond_1a

    check-cast v2, Lp2/m;

    invoke-virtual {v2}, Lp2/m;->a()Lp2/k0;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v3, v2, Lp2/k0;->a:Lp2/e0;

    if-nez v3, :cond_17

    iget-object v3, v2, Lp2/k0;->b:Lp2/e0;

    if-nez v3, :cond_17

    iget-object v3, v2, Lp2/k0;->c:Lp2/e0;

    if-nez v3, :cond_17

    iget-object v2, v2, Lp2/k0;->d:Lp2/e0;

    if-nez v2, :cond_17

    goto :goto_f

    :cond_17
    new-instance v2, Lp2/e;

    iget-object v3, v0, Lp2/e;->a:Ljava/lang/Object;

    invoke-static {v3, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lp2/m;

    invoke-virtual {v3}, Lp2/m;->a()Lp2/k0;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v1, Lp2/k0;->a:Lp2/e0;

    if-nez v1, :cond_19

    :cond_18
    new-instance v3, Lp2/e0;

    const/16 v21, 0x0

    const v22, 0xffff

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v22}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object v1, v3

    :cond_19
    iget v3, v0, Lp2/e;->b:I

    iget v4, v0, Lp2/e;->c:I

    invoke-direct {v2, v3, v4, v1}, Lp2/e;-><init>(IILjava/lang/Object;)V

    filled-new-array {v0, v2}, [Lp2/e;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10

    :cond_1a
    :goto_f
    filled-new-array {v0}, [Lp2/e;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_10
    return-object v0

    :pswitch_17
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    new-instance v1, Lb0/v2;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lr/m1;->l:Lr/m1;

    goto :goto_11

    :cond_1b
    sget-object v2, Lr/m1;->m:Lr/m1;

    :goto_11
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v2, v0}, Lb0/v2;-><init>(Lr/m1;F)V

    return-object v1

    :pswitch_18
    move-object v0, v1

    check-cast v0, Lm0/n1;

    invoke-virtual {v0}, Lm0/n1;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    sget v0, Lp2/l0;->c:I

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v1, v0

    invoke-direct {v6, v8, v1}, Lu2/e;-><init>(II)V

    :cond_1c
    return-object v6

    :pswitch_19
    move-object v0, v1

    check-cast v0, Lm0/n1;

    invoke-virtual {v0}, Lm0/n1;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    sget v0, Lp2/l0;->c:I

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-direct {v6, v0, v8}, Lu2/e;-><init>(II)V

    :cond_1d
    return-object v6

    :pswitch_1a
    move-object v0, v1

    check-cast v0, Lm0/n1;

    invoke-virtual {v0}, Lm0/n1;->d()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    sget v0, Lp2/l0;->c:I

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v1, v0

    invoke-direct {v6, v8, v1}, Lu2/e;-><init>(II)V

    :cond_1e
    return-object v6

    :pswitch_1b
    move-object v0, v1

    check-cast v0, Lm0/n1;

    invoke-virtual {v0}, Lm0/n1;->e()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    sget v0, Lp2/l0;->c:I

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-direct {v6, v0, v8}, Lu2/e;-><init>(II)V

    :cond_1f
    return-object v6

    :pswitch_1c
    move-object v0, v1

    check-cast v0, Lm0/n1;

    iget-object v1, v0, Lm0/n1;->g:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iget-wide v9, v0, Lm0/n1;->f:J

    sget v2, Lp2/l0;->c:I

    and-long/2addr v9, v4

    long-to-int v2, v9

    invoke-static {v2, v1}, Lb0/n1;->r(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_20

    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v1, v0

    invoke-direct {v6, v8, v1}, Lu2/e;-><init>(II)V

    :cond_20
    return-object v6

    :pswitch_1d
    move-object v0, v1

    check-cast v0, Lm0/n1;

    iget-object v1, v0, Lm0/n1;->g:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iget-wide v9, v0, Lm0/n1;->f:J

    sget v2, Lp2/l0;->c:I

    and-long/2addr v9, v4

    long-to-int v2, v9

    if-gtz v2, :cond_21

    :goto_12
    move v1, v3

    goto :goto_13

    :cond_21
    invoke-static {}, Lb0/n1;->v()Lx3/h;

    move-result-object v7

    if-nez v7, :cond_23

    if-gtz v2, :cond_22

    goto :goto_12

    :cond_22
    invoke-static {v1, v2, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_13

    :cond_23
    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v1, v9}, Lx3/h;->b(Ljava/lang/CharSequence;I)I

    move-result v7

    if-gez v7, :cond_25

    if-gtz v2, :cond_24

    goto :goto_12

    :cond_24
    invoke-static {v1, v2, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_13

    :cond_25
    move v1, v7

    :goto_13
    if-ne v1, v3, :cond_26

    goto :goto_14

    :cond_26
    new-instance v6, Lu2/e;

    iget-wide v2, v0, Lm0/n1;->f:J

    and-long/2addr v2, v4

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-direct {v6, v0, v8}, Lu2/e;-><init>(II)V

    :goto_14
    return-object v6

    :pswitch_1e
    move-object v0, v1

    check-cast v0, Lu2/x;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1f
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    return-object v0

    :pswitch_20
    move-object v0, v1

    check-cast v0, Lp2/j0;

    sget v0, Lb0/q;->a:I

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_21
    move-object v0, v1

    check-cast v0, Landroid/content/res/Resources;

    const-string v1, "resources"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-ne v0, v2, :cond_27

    goto :goto_15

    :cond_27
    move v7, v8

    :goto_15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_22
    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    const-string v1, "%02x"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_23
    move-object v0, v1

    check-cast v0, Lad/e2;

    const-string v1, ","

    const-string v2, "it"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lad/e2;->a:F

    const/16 v3, 0x3e8

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lad/e2;->b:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lad/e2;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v0, ""

    goto :goto_16

    :cond_28
    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-double v8, v0

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
