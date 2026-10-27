.class public final Lk1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lk1/u;

.field public static final c:Lk1/u;

.field public static final d:Lk1/u;


# instance fields
.field public final a:Lt0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk1/u;

    invoke-direct {v0}, Lk1/u;-><init>()V

    sput-object v0, Lk1/u;->b:Lk1/u;

    new-instance v0, Lk1/u;

    invoke-direct {v0}, Lk1/u;-><init>()V

    sput-object v0, Lk1/u;->c:Lk1/u;

    new-instance v0, Lk1/u;

    invoke-direct {v0}, Lk1/u;-><init>()V

    sput-object v0, Lk1/u;->d:Lk1/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Lk1/w;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lk1/u;->a:Lt0/b;

    return-void
.end method

.method public static a(Lk1/u;)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lk1/u;->b:Lk1/u;

    const-string v1, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    if-eq p0, v0, :cond_10

    sget-object v0, Lk1/u;->c:Lk1/u;

    if-eq p0, v0, :cond_f

    iget-object p0, p0, Lk1/u;->a:Lt0/b;

    iget v0, p0, Lt0/b;->n:I

    if-nez v0, :cond_0

    const-string p0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lt0/b;->l:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    aget-object v3, p0, v2

    check-cast v3, Lk1/w;

    check-cast v3, Lf1/q;

    iget-object v4, v3, Lf1/q;->l:Lf1/q;

    iget-boolean v4, v4, Lf1/q;->y:Z

    if-nez v4, :cond_1

    const-string v4, "visitChildren called on an unattached node"

    invoke-static {v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Lt0/b;

    const/16 v5, 0x10

    new-array v6, v5, [Lf1/q;

    invoke-direct {v4, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v3, v3, Lf1/q;->l:Lf1/q;

    iget-object v6, v3, Lf1/q;->q:Lf1/q;

    if-nez v6, :cond_2

    invoke-static {v4, v3}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget v3, v4, Lt0/b;->n:I

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/q;

    iget v6, v3, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_4

    invoke-static {v4, v3}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_3

    iget v6, v3, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eqz v3, :cond_3

    instance-of v8, v3, Lk1/b0;

    if-eqz v8, :cond_5

    check-cast v3, Lk1/b0;

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Lk1/b0;->T0(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_5
    iget v8, v3, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_b

    instance-of v8, v3, Le2/k;

    if-eqz v8, :cond_b

    move-object v8, v3

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v1

    :goto_4
    const/4 v10, 0x1

    if-eqz v8, :cond_a

    iget v11, v8, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_6

    move-object v3, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Lt0/b;

    new-array v10, v5, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_8
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v9, v10, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_d
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
