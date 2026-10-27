.class public final Lc2/l0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc2/l0;->l:I

    iput-object p2, p0, Lc2/l0;->m:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Li9/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc2/l0;->l:I

    .line 2
    check-cast p1, Lj9/o;

    iput-object p1, p0, Lc2/l0;->m:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lc2/l0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lx1/i;

    invoke-virtual {p0}, Lx1/i;->M0()Lu9/t;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lx1/d;

    iget-object p0, p0, Lx1/d;->d:Lu9/t;

    return-object p0

    :pswitch_1
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Le6/g;

    iget-object p0, p0, Le6/g;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lg5/m;

    iget-object p0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lr4/g;

    iget-object v1, p0, Lr4/g;->l:Landroid/content/Context;

    iget-object v0, p0, Lr4/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lr4/g;->o:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "context.noBackupFilesDir"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lr4/f;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lr4/c;

    invoke-direct {v3}, Lr4/c;-><init>()V

    iget-object v4, p0, Lr4/g;->n:Ld1/c0;

    iget-boolean v5, p0, Lr4/g;->p:Z

    invoke-direct/range {v0 .. v5}, Lr4/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lr4/c;Ld1/c0;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/f;

    iget-object v2, p0, Lr4/g;->m:Ljava/lang/String;

    new-instance v3, Lr4/c;

    invoke-direct {v3}, Lr4/c;-><init>()V

    iget-object v4, p0, Lr4/g;->n:Ld1/c0;

    iget-boolean v5, p0, Lr4/g;->p:Z

    invoke-direct/range {v0 .. v5}, Lr4/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lr4/c;Ld1/c0;Z)V

    :goto_0
    iget-boolean p0, p0, Lr4/g;->r:Z

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lr1/j0;

    iget-object p0, p0, Lr1/j0;->h:Lr0/e1;

    sget-object v0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Ln2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Ln2/b;->g:Le3/a;

    const-string v0, "OnPositionedDispatch"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ln2/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :pswitch_6
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Ln/h1;

    invoke-virtual {p0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm/p;->n:Lm/p;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Ln/h1;->d:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lk4/p;

    invoke-virtual {p0}, Lk4/p;->d()Lr4/i;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lk1/b0;

    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Ly4/q;

    iget-object v0, p0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    const-string v1, "workManagerImpl.workDatabase"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/fragment/app/e;

    const/4 v2, 0x4

    const-string v3, "dev-messages"

    invoke-direct {v1, v0, v3, p0, v2}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/WorkDatabase;->o(Ljava/lang/Runnable;)V

    iget-object v1, p0, Ly4/q;->m:Lx4/a;

    iget-object p0, p0, Ly4/q;->p:Ljava/util/List;

    invoke-static {v1, v0, p0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lf3/x;

    invoke-static {p0}, Lf3/x;->h(Lf3/x;)Lc2/u;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lf3/x;->getPopupContentSize-bOM6tXw()Lb3/l;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lf2/z1;

    iget-object p0, p0, Lf2/z1;->a:Lb0/l1;

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, La1/d;

    iget-boolean v0, p0, La1/d;->m:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v0, p0, La1/d;->n:Z

    if-eqz v0, :cond_5

    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    invoke-static {v0}, Lb1/a;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, La1/d;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La1/d;->n:Z

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_c
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lf2/q0;

    iget-object p0, p0, Lf2/q0;->n:Lu9/t;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lu9/v;->e(Lu9/t;Lf1/s;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_e
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Ll1/c;

    return-object p0

    :pswitch_f
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, p0, Le2/l0;->p:Le2/x0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le2/x0;->K:Z

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_6

    iput-boolean v1, p0, Le2/t0;->E:Z

    :cond_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_10
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, [Lx9/g;

    array-length p0, p0

    new-array p0, p0, [Lc5/c;

    return-object p0

    :pswitch_11
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lj9/o;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_12
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lc2/r1;

    invoke-virtual {p0}, Lc2/r1;->a()Lc2/n0;

    move-result-object p0

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    iget-object v1, v1, Lk/f0;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    iget v2, p0, Lc2/n0;->y:I

    if-eq v2, v1, :cond_c

    iget-object p0, p0, Lc2/n0;->q:Lk/m0;

    iget-object v1, p0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object p0, p0, Lk/m0;->a:[J

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-ltz v2, :cond_a

    move v5, v4

    :goto_5
    aget-wide v6, p0, v5

    not-long v8, v6

    shl-long/2addr v8, v3

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    sub-int v8, v5, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_6
    if-ge v10, v8, :cond_8

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_7

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v1, v11

    check-cast v11, Lc2/e0;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lc2/e0;->d:Z

    :cond_7
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    if-ne v8, v9, :cond_a

    :cond_9
    if-eq v5, v2, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object p0, v0, Le2/g0;->t:Le2/g0;

    if-eqz p0, :cond_b

    iget-object p0, v0, Le2/g0;->S:Le2/l0;

    iget-boolean p0, p0, Le2/l0;->e:Z

    if-nez p0, :cond_c

    invoke-static {v0, v4, v3}, Le2/g0;->V(Le2/g0;ZI)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Le2/g0;->r()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {v0, v4, v3}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_c
    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_13
    iget-object p0, p0, Lc2/l0;->m:Ljava/lang/Object;

    check-cast p0, Lc2/e0;

    iget-object v0, p0, Lc2/e0;->g:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lc2/e0;->c:Lr0/x;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lr0/x;->l()V

    :cond_d
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
