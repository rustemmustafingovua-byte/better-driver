.class public final Lf2/y;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Le2/q1;
.implements Le2/x1;
.implements Ly1/g;
.implements Landroidx/lifecycle/f;
.implements Le2/o1;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lk1/j;


# static fields
.field public static V0:Ljava/lang/Class;

.field public static W0:Ljava/lang/reflect/Method;

.field public static X0:Ljava/lang/reflect/Method;

.field public static final Y0:Lk/h0;

.field public static Z0:Lf2/l;

.field public static a1:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Lf2/x1;

.field public final A0:Lr0/e1;

.field public final B:Lb0/l1;

.field public final B0:Lf2/m1;

.field public final C:Lf2/z0;

.field public final C0:Lu1/c;

.field public final D:Lc2/o;

.field public final D0:Ld2/b;

.field public final E:Le2/g0;

.field public final E0:Lf2/r0;

.field public final F:Lk/x;

.field public F0:Landroid/view/MotionEvent;

.field public final G:Ln2/b;

.field public G0:J

.field public final H:Lf2/y;

.field public final H0:Lg5/c;

.field public final I:Lm2/r;

.field public final I0:Lk/h0;

.field public final J:Lf2/e0;

.field public J0:F

.field public K:Lh1/d;

.field public K0:F

.field public final L:Lf2/h;

.field public final L0:Ldd/j0;

.field public final M:Lm1/d;

.field public final M0:Lf2/k;

.field public final N:Lg1/j;

.field public N0:Z

.field public final O:Lk/h0;

.field public final O0:Lf2/t1;

.field public P:Lk/h0;

.field public final P0:Lf2/v;

.field public Q:Z

.field public final Q0:Lf2/e1;

.field public R:Z

.field public R0:Z

.field public final S:Ly1/i;

.field public final S0:Lb0/l1;

.field public final T:Lf8/p2;

.field public T0:Landroid/view/View;

.field public final U:Lr0/e1;

.field public final U0:Lf2/t;

.field public final V:Lg5/i;

.field public final W:Lg1/c;

.field public a0:Z

.field public final b0:Lf2/j;

.field public final c0:Lf2/i;

.field public final d0:Le2/s1;

.field public e0:Z

.field public f0:Lf2/a1;

.field public g0:Lb3/a;

.field public h0:Z

.field public final i0:Le2/v0;

.field public j0:J

.field public final k0:[I

.field public l:J

.field public final l0:[F

.field public final m:Z

.field public final m0:[F

.field public n:Lv1/a;

.field public final n0:[F

.field public final o:Le2/j0;

.field public o0:J

.field public p:Lf2/y1;

.field public p0:Z

.field public q:Lf2/z1;

.field public q0:J

.field public r:La1/e;

.field public final r0:Lr0/e1;

.field public final s:Lu8/k;

.field public final s0:Lr0/d0;

.field public final t:Lf2/k;

.field public t0:Li9/c;

.field public final u:Lr0/e1;

.field public final u0:Le6/g;

.field public final v:Landroid/view/View;

.field public final v0:Lu2/y;

.field public final w:Z

.field public final w0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final x:Lk1/o;

.field public final x0:Lf2/n1;

.field public y:Ly8/h;

.field public final y0:Lf2/u1;

.field public final z:Li1/b;

.field public final z0:Lr0/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    sput-object v0, Lf2/y;->Y0:Lk/h0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly8/h;)V
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v0, v2, Lf2/y;->l:J

    const/4 v10, 0x1

    iput-boolean v10, v2, Lf2/y;->m:Z

    new-instance v0, Le2/j0;

    invoke-direct {v0}, Le2/j0;-><init>()V

    iput-object v0, v2, Lf2/y;->o:Le2/j0;

    sget-object v0, La1/a;->l:La1/a;

    iput-object v0, v2, Lf2/y;->r:La1/e;

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, v2, Lf2/y;->s:Lu8/k;

    new-instance v0, Lf2/k;

    const/4 v11, 0x0

    invoke-direct {v0, v2, v11}, Lf2/k;-><init>(Lf2/y;I)V

    iput-object v0, v2, Lf2/y;->t:Lf2/k;

    invoke-static {v9}, Ll7/a;->a(Landroid/content/Context;)Lb3/e;

    move-result-object v0

    sget-object v12, Lr0/e;->p:Lr0/e;

    new-instance v1, Lr0/e1;

    invoke-direct {v1, v0, v12}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v1, v2, Lf2/y;->u:Lr0/e1;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v13, v0, :cond_0

    move v14, v10

    goto :goto_0

    :cond_0
    move v14, v11

    :goto_0
    iput-boolean v14, v2, Lf2/y;->w:Z

    new-instance v0, Lm2/e;

    invoke-direct {v0}, Lf1/q;-><init>()V

    new-instance v1, Lk1/o;

    invoke-direct {v1, v2, v2}, Lk1/o;-><init>(Lf2/y;Lf2/y;)V

    iput-object v1, v2, Lf2/y;->x:Lk1/o;

    move-object/from16 v1, p2

    iput-object v1, v2, Lf2/y;->y:Ly8/h;

    new-instance v1, Li1/b;

    invoke-direct {v1}, Li1/b;-><init>()V

    iput-object v1, v2, Lf2/y;->z:Li1/b;

    new-instance v1, Lf2/x1;

    invoke-direct {v1}, Lf2/x1;-><init>()V

    iput-object v1, v2, Lf2/y;->A:Lf2/x1;

    new-instance v1, Lb0/l1;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lb0/l1;-><init>(I)V

    iput-object v1, v2, Lf2/y;->B:Lb0/l1;

    new-instance v1, Lf2/z0;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-direct {v1, v3}, Lf2/z0;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object v1, v2, Lf2/y;->C:Lf2/z0;

    new-instance v1, Lc2/o;

    invoke-direct {v1}, Lc2/o;-><init>()V

    iput-object v1, v2, Lf2/y;->D:Lc2/o;

    new-instance v1, Le2/g0;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Le2/g0;-><init>(I)V

    sget-object v3, Lc2/k1;->b:Lc2/k1;

    invoke-virtual {v1, v3}, Le2/g0;->e0(Lc2/r0;)V

    invoke-virtual {v2}, Lf2/y;->getDensity()Lb3/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Le2/g0;->b0(Lb3/c;)V

    invoke-virtual {v2}, Lf2/y;->getViewConfiguration()Lf2/p2;

    move-result-object v3

    invoke-virtual {v1, v3}, Le2/g0;->g0(Lf2/p2;)V

    new-instance v3, Lf2/w;

    invoke-direct {v3, v2}, Lf2/w;-><init>(Lf2/y;)V

    invoke-virtual {v2}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v4

    check-cast v4, Lk1/o;

    iget-object v4, v4, Lk1/o;->e:Lk1/m;

    invoke-interface {v3, v4}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    invoke-virtual {v2}, Lf2/y;->getDragAndDropManager()Li1/b;

    move-result-object v4

    iget-object v4, v4, Li1/b;->c:Li1/a;

    invoke-interface {v3, v4}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Le2/g0;->f0(Lf1/r;)V

    iput-object v1, v2, Lf2/y;->E:Le2/g0;

    sget-object v1, Lk/l;->a:Lk/x;

    new-instance v1, Lk/x;

    invoke-direct {v1}, Lk/x;-><init>()V

    iput-object v1, v2, Lf2/y;->F:Lk/x;

    new-instance v1, Ln2/b;

    invoke-virtual {v2}, Lf2/y;->getLayoutNodes()Lk/x;

    invoke-direct {v1}, Ln2/b;-><init>()V

    iput-object v1, v2, Lf2/y;->G:Ln2/b;

    iput-object v2, v2, Lf2/y;->H:Lf2/y;

    new-instance v1, Lm2/r;

    invoke-virtual {v2}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v3

    invoke-virtual {v2}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lm2/r;-><init>(Le2/g0;Lm2/e;Lk/x;)V

    iput-object v1, v2, Lf2/y;->I:Lm2/r;

    new-instance v15, Lf2/e0;

    invoke-direct {v15, v2}, Lf2/e0;-><init>(Lf2/y;)V

    iput-object v15, v2, Lf2/y;->J:Lf2/e0;

    new-instance v0, Lh1/d;

    move-object v1, v0

    new-instance v0, Lf2/p;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    move-object v4, v3

    const-class v3, Lf2/k0;

    move-object v5, v4

    const-string v4, "getContentCaptureSessionCompat"

    move-object v6, v5

    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;"

    move-object/from16 v16, v6

    const/4 v6, 0x1

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v8}, Lf2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v11, v2, v0}, Lh1/d;-><init>(Lf2/y;Lf2/p;)V

    iput-object v11, v2, Lf2/y;->K:Lh1/d;

    new-instance v0, Lf2/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "accessibility"

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v2, Lf2/y;->L:Lf2/h;

    new-instance v0, Lm1/d;

    invoke-direct {v0, v2}, Lm1/d;-><init>(Lf2/y;)V

    iput-object v0, v2, Lf2/y;->M:Lm1/d;

    new-instance v0, Lg1/j;

    invoke-direct {v0}, Lg1/j;-><init>()V

    iput-object v0, v2, Lf2/y;->N:Lg1/j;

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    iput-object v0, v2, Lf2/y;->O:Lk/h0;

    new-instance v0, Ly1/i;

    invoke-direct {v0}, Ly1/i;-><init>()V

    iput-object v0, v2, Lf2/y;->S:Ly1/i;

    new-instance v0, Lf8/p2;

    invoke-virtual {v2}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    new-instance v3, Ly1/d;

    iget-object v1, v1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->c:Le2/s;

    invoke-direct {v3, v1}, Ly1/d;-><init>(Lc2/u;)V

    iput-object v3, v0, Lf8/p2;->c:Ljava/lang/Object;

    new-instance v1, Lq3/k;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Lq3/k;-><init>(I)V

    iput-object v1, v0, Lf8/p2;->d:Ljava/lang/Object;

    new-instance v1, Le2/q;

    invoke-direct {v1}, Le2/q;-><init>()V

    iput-object v1, v0, Lf8/p2;->e:Ljava/lang/Object;

    iput-object v0, v2, Lf2/y;->T:Lf8/p2;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, v2, Lf2/y;->U:Lr0/e1;

    new-instance v0, Lg5/i;

    invoke-virtual {v2}, Lf2/y;->getAutofillTree()Lg1/j;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lg5/i;-><init>(Lf2/y;Lg1/j;)V

    iput-object v0, v2, Lf2/y;->V:Lg5/i;

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_7

    new-instance v1, Lg1/c;

    move-object v3, v1

    new-instance v1, Lb0/l1;

    const/16 v4, 0xf

    invoke-direct {v1, v4, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v4

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v3

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lg1/c;-><init>(Lb0/l1;Lm2/r;Lf2/y;Ln2/b;Ljava/lang/String;)V

    move-object v2, v3

    iput-object v0, v2, Lf2/y;->W:Lg1/c;

    new-instance v0, Lf2/j;

    invoke-direct {v0, v9}, Lf2/j;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lf2/y;->b0:Lf2/j;

    new-instance v0, Lf2/i;

    invoke-virtual {v2}, Lf2/y;->getClipboardManager()Lf2/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lf2/i;-><init>(Lf2/j;)V

    iput-object v0, v2, Lf2/y;->c0:Lf2/i;

    new-instance v0, Le2/s1;

    new-instance v1, Lf2/s;

    invoke-direct {v1, v2, v10}, Lf2/s;-><init>(Lf2/y;I)V

    invoke-direct {v0, v1}, Le2/s1;-><init>(Lf2/s;)V

    iput-object v0, v2, Lf2/y;->d0:Le2/s1;

    new-instance v0, Le2/v0;

    invoke-virtual {v2}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v1

    invoke-direct {v0, v1}, Le2/v0;-><init>(Le2/g0;)V

    iput-object v0, v2, Lf2/y;->i0:Le2/v0;

    const v0, 0x7fffffff

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long v3, v0, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    iput-wide v0, v2, Lf2/y;->j0:J

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, v2, Lf2/y;->k0:[I

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v0

    iput-object v0, v2, Lf2/y;->l0:[F

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v0

    iput-object v0, v2, Lf2/y;->m0:[F

    invoke-static {}, Lm1/z;->a()[F

    move-result-object v0

    iput-object v0, v2, Lf2/y;->n0:[F

    const-wide/16 v0, -0x1

    iput-wide v0, v2, Lf2/y;->o0:J

    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    iput-wide v0, v2, Lf2/y;->q0:J

    const/4 v0, 0x0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, v2, Lf2/y;->r0:Lr0/e1;

    new-instance v1, Lf2/v;

    invoke-direct {v1, v2, v10}, Lf2/v;-><init>(Lf2/y;I)V

    invoke-static {v1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v1

    iput-object v1, v2, Lf2/y;->s0:Lr0/d0;

    new-instance v1, Le6/g;

    invoke-virtual {v2}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Le6/g;-><init>(Landroid/view/View;Lf2/y;)V

    iput-object v1, v2, Lf2/y;->u0:Le6/g;

    new-instance v3, Lu2/y;

    invoke-direct {v3, v1}, Lu2/y;-><init>(Lu2/s;)V

    iput-object v3, v2, Lf2/y;->v0:Lu2/y;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v2, Lf2/y;->w0:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lf2/n1;

    invoke-virtual {v2}, Lf2/y;->getTextInputService()Lu2/y;

    move-result-object v3

    invoke-direct {v1, v3}, Lf2/n1;-><init>(Lu2/y;)V

    iput-object v1, v2, Lf2/y;->x0:Lf2/n1;

    new-instance v1, Lf2/u1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lf2/y;->y0:Lf2/u1;

    invoke-static {v9}, Lr5/h1;->e(Landroid/content/Context;)Lt2/e;

    move-result-object v1

    new-instance v3, Lr0/e1;

    invoke-direct {v3, v1, v12}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v3, v2, Lf2/y;->z0:Lr0/e1;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    sget-object v3, Lk1/h;->a:[I

    if-eqz v1, :cond_2

    if-eq v1, v10, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    sget-object v1, Lb3/m;->m:Lb3/m;

    goto :goto_1

    :cond_2
    sget-object v1, Lb3/m;->l:Lb3/m;

    :goto_1
    if-nez v1, :cond_3

    sget-object v1, Lb3/m;->l:Lb3/m;

    :cond_3
    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, v2, Lf2/y;->A0:Lr0/e1;

    new-instance v1, Lf2/m1;

    invoke-direct {v1, v2, v10}, Lf2/m1;-><init>(Landroid/view/View;I)V

    iput-object v1, v2, Lf2/y;->B0:Lf2/m1;

    new-instance v1, Lu1/c;

    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v10

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    :goto_2
    invoke-direct {v1, v3}, Lu1/c;-><init>(I)V

    iput-object v1, v2, Lf2/y;->C0:Lu1/c;

    new-instance v1, Ld2/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lt0/b;

    const/16 v4, 0x10

    new-array v5, v4, [Le2/b;

    invoke-direct {v3, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    new-instance v3, Lt0/b;

    new-array v5, v4, [Lc6/o;

    invoke-direct {v3, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    new-instance v3, Lt0/b;

    new-array v5, v4, [Le2/g0;

    invoke-direct {v3, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    new-instance v3, Lt0/b;

    new-array v4, v4, [Lc6/o;

    invoke-direct {v3, v4}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v1, v2, Lf2/y;->D0:Ld2/b;

    new-instance v1, Lf2/r0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ld7/g;

    new-instance v4, Lc2/l0;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, v4}, Ld7/g;-><init>(Lc2/l0;)V

    sget-object v3, Lf2/m2;->l:[Lf2/m2;

    iput-object v1, v2, Lf2/y;->E0:Lf2/r0;

    new-instance v1, Lg5/c;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lg5/c;-><init>(I)V

    iput-object v1, v2, Lf2/y;->H0:Lg5/c;

    new-instance v1, Lk/h0;

    invoke-direct {v1}, Lk/h0;-><init>()V

    iput-object v1, v2, Lf2/y;->I0:Lk/h0;

    new-instance v1, Ldd/j0;

    invoke-direct {v1, v10, v2}, Ldd/j0;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lf2/y;->L0:Ldd/j0;

    new-instance v1, Lf2/k;

    invoke-direct {v1, v2, v10}, Lf2/k;-><init>(Lf2/y;I)V

    iput-object v1, v2, Lf2/y;->M0:Lf2/k;

    new-instance v1, Lf2/t1;

    new-instance v3, Lf2/s;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lf2/s;-><init>(Lf2/y;I)V

    invoke-direct {v1, v9, v3}, Lf2/t1;-><init>(Landroid/content/Context;Lf2/s;)V

    iput-object v1, v2, Lf2/y;->O0:Lf2/t1;

    new-instance v1, Lf2/v;

    invoke-direct {v1, v2, v4}, Lf2/v;-><init>(Lf2/y;I)V

    iput-object v1, v2, Lf2/y;->P0:Lf2/v;

    new-instance v1, Lf2/e1;

    invoke-direct {v1}, Lf2/e1;-><init>()V

    iput-object v1, v2, Lf2/y;->Q0:Lf2/e1;

    iget-object v1, v2, Lf2/y;->K:Lh1/d;

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lf2/j0;->a:Lf2/j0;

    invoke-virtual {v1, v2, v10, v4}, Lf2/j0;->a(Landroid/view/View;IZ)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {v2, v15}, Lq3/q;->c(Landroid/view/ViewGroup;Lq3/b;)V

    invoke-virtual {v2}, Lf2/y;->getDragAndDropManager()Li1/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {v2}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v1

    invoke-virtual {v1, v2}, Le2/g0;->d(Le2/q1;)V

    sget-object v1, Lf2/f0;->a:Lf2/f0;

    invoke-virtual {v1, v2}, Lf2/f0;->a(Landroid/view/View;)V

    if-eqz v14, :cond_5

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f08004c

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iput-object v1, v2, Lf2/y;->v:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lf2/y;->addView(Landroid/view/View;I)V

    :cond_5
    const/16 v1, 0x1f

    if-lt v13, v1, :cond_6

    new-instance v0, Lb0/l1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lb0/l1;-><init>(I)V

    :cond_6
    iput-object v0, v2, Lf2/y;->S0:Lb0/l1;

    new-instance v0, Lf2/t;

    invoke-direct {v0, v2}, Lf2/t;-><init>(Lf2/y;)V

    iput-object v0, v2, Lf2/y;->U0:Lf2/t;

    return-void

    :cond_7
    const-string v0, "Autofill service could not be located."

    invoke-static {v0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0
.end method

.method public static final f(Lf2/y;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lf2/y;->J:Lf2/e0;

    iget-object v0, p0, Lf2/e0;->P:Ljava/lang/String;

    invoke-static {p3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf2/e0;->N:Lk/v;

    invoke-virtual {p0, p1}, Lk/v;->d(I)I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lf2/e0;->Q:Ljava/lang/String;

    invoke-static {p3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lf2/e0;->O:Lk/v;

    invoke-virtual {p0, p1}, Lk/v;->d(I)I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static final synthetic g(Landroid/view/MotionEvent;Lf2/y;)Z
    .locals 0

    invoke-super {p1, p0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    return-void
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRoot$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    return-void
.end method

.method private final get_viewTreeOwners()Lf2/n;
    .locals 0

    iget-object p0, p0, Lf2/y;->r0:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/n;

    return-object p0
.end method

.method public static final synthetic h(Lf2/y;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lf2/y;)Lf2/n;
    .locals 0

    invoke-direct {p0}, Lf2/y;->get_viewTreeOwners()Lf2/n;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lf2/y;

    if-eqz v3, :cond_0

    check-cast v2, Lf2/y;

    invoke-virtual {v2}, Lf2/y;->y()V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lf2/y;->j(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static k(I)J
    .locals 4

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    int-to-long v0, p0

    shl-long v2, v0, v2

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    int-to-long v0, v3

    shl-long/2addr v0, v2

    const p0, 0x7fffffff

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_2
    int-to-long v0, v3

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static n(Le2/g0;)V
    .locals 3

    invoke-virtual {p0}, Le2/g0;->D()V

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-static {v2}, Lf2/y;->n(Le2/g0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static p(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int/2addr v0, v1

    if-ge v0, v4, :cond_2

    sget-object v0, Lf2/c2;->a:Lf2/c2;

    invoke-virtual {v0, p0, v6}, Lf2/c2;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v3

    :goto_3
    if-nez v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method private setDensity(Lb3/c;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->u:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setFontFamilyResolver(Lt2/d;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->z0:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private setLayoutDirection(Lb3/m;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->A0:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final set_viewTreeOwners(Lf2/n;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->r0:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Le2/g0;ZZZ)V
    .locals 5

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    if-eqz p2, :cond_b

    iget-object p2, v0, Le2/v0;->b:Lg5/m;

    iget-object v1, p1, Le2/g0;->t:Le2/g0;

    iget-object v2, p1, Le2/g0;->S:Le2/l0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v1, v2, Le2/l0;->d:Le2/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    iget-boolean v1, v2, Le2/l0;->e:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-boolean v3, v2, Le2/l0;->e:Z

    iget-object p3, v2, Le2/l0;->p:Le2/x0;

    iput-boolean v3, p3, Le2/x0;->F:Z

    iget-boolean p3, p1, Le2/g0;->c0:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p1}, Le2/v0;->h(Le2/g0;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p3, Le2/g0;->S:Le2/l0;

    iget-boolean p3, p3, Le2/l0;->e:Z

    if-ne p3, v3, :cond_7

    :cond_4
    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p1}, Le2/v0;->i(Le2/g0;)Z

    move-result p3

    if-eqz p3, :cond_8

    :cond_5
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Le2/g0;->r()Z

    move-result p3

    if-ne p3, v3, :cond_6

    goto :goto_1

    :cond_6
    sget-object p3, Le2/u;->n:Le2/u;

    invoke-virtual {p2, p1, p3}, Lg5/m;->b(Le2/g0;Le2/u;)V

    goto :goto_1

    :cond_7
    sget-object p3, Le2/u;->l:Le2/u;

    invoke-virtual {p2, p1, p3}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :cond_8
    :goto_1
    iget-boolean p2, v0, Le2/v0;->d:Z

    if-nez p2, :cond_c

    if-eqz p4, :cond_c

    invoke-virtual {p0, p1}, Lf2/y;->G(Le2/g0;)V

    return-void

    :cond_9
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_a
    iget-object p0, v0, Le2/v0;->h:Lt0/b;

    new-instance p2, Le2/u0;

    invoke-direct {p2, p1, v3, p3}, Le2/u0;-><init>(Le2/g0;ZZ)V

    invoke-virtual {p0, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {v0, p1, p3}, Le2/v0;->p(Le2/g0;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz p4, :cond_c

    invoke-virtual {p0, p1}, Lf2/y;->G(Le2/g0;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final B(Le2/g0;ZZ)V
    .locals 8

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    iget-object v5, p0, Lf2/y;->i0:Le2/v0;

    const/4 v6, 0x1

    if-eqz p2, :cond_b

    iget-object p2, v5, Le2/v0;->b:Lg5/m;

    iget-object v7, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_1

    if-eq v7, v6, :cond_13

    if-eq v7, v4, :cond_1

    if-eq v7, v3, :cond_13

    if-ne v7, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-boolean v2, v0, Le2/l0;->e:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Le2/l0;->f:Z

    if-eqz v2, :cond_3

    :cond_2
    if-nez p3, :cond_3

    goto/16 :goto_6

    :cond_3
    iput-boolean v6, v0, Le2/l0;->f:Z

    iput-boolean v6, v0, Le2/l0;->g:Z

    iget-object p3, v0, Le2/l0;->p:Le2/x0;

    iput-boolean v6, p3, Le2/x0;->G:Z

    iput-boolean v6, p3, Le2/x0;->H:Z

    iget-boolean p3, p1, Le2/g0;->c0:Z

    if-eqz p3, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p3

    invoke-virtual {p1}, Le2/g0;->J()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_5

    iget-object v0, p3, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->e:Z

    if-ne v0, v6, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    iget-object v0, p3, Le2/g0;->S:Le2/l0;

    iget-boolean v0, v0, Le2/l0;->f:Z

    if-ne v0, v6, :cond_6

    goto :goto_1

    :cond_6
    sget-object p3, Le2/u;->m:Le2/u;

    invoke-virtual {p2, p1, p3}, Lg5/m;->b(Le2/g0;Le2/u;)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Le2/g0;->q()Z

    move-result v0

    if-ne v0, v6, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Le2/g0;->r()Z

    move-result p3

    if-ne p3, v6, :cond_9

    goto :goto_2

    :cond_9
    sget-object p3, Le2/u;->o:Le2/u;

    invoke-virtual {p2, p1, p3}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :cond_a
    :goto_2
    iget-boolean p1, v5, Le2/v0;->d:Z

    if-nez p1, :cond_13

    invoke-virtual {p0, v1}, Lf2/y;->G(Le2/g0;)V

    return-void

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_13

    if-eq p2, v6, :cond_13

    if-eq p2, v4, :cond_13

    if-eq p2, v3, :cond_13

    if-ne p2, v2, :cond_12

    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Le2/g0;->I()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    :goto_3
    move v2, v6

    :goto_4
    if-nez p3, :cond_e

    invoke-virtual {p1}, Le2/g0;->r()Z

    move-result p3

    if-nez p3, :cond_13

    invoke-virtual {p1}, Le2/g0;->q()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result p3

    if-ne p3, v2, :cond_e

    invoke-virtual {p1}, Le2/g0;->I()Z

    move-result p3

    iget-object v3, v0, Le2/l0;->p:Le2/x0;

    iget-boolean v3, v3, Le2/x0;->E:Z

    if-ne p3, v3, :cond_e

    goto :goto_6

    :cond_e
    iget-object p3, v0, Le2/l0;->p:Le2/x0;

    iput-boolean v6, p3, Le2/x0;->G:Z

    iput-boolean v6, p3, Le2/x0;->H:Z

    iget-boolean v0, p1, Le2/g0;->c0:Z

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    iget-boolean p3, p3, Le2/x0;->E:Z

    if-eqz p3, :cond_13

    if-eqz v2, :cond_13

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Le2/g0;->q()Z

    move-result p3

    if-ne p3, v6, :cond_10

    goto :goto_5

    :cond_10
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Le2/g0;->r()Z

    move-result p2

    if-ne p2, v6, :cond_11

    goto :goto_5

    :cond_11
    iget-object p2, v5, Le2/v0;->b:Lg5/m;

    sget-object p3, Le2/u;->o:Le2/u;

    invoke-virtual {p2, p1, p3}, Lg5/m;->b(Le2/g0;Le2/u;)V

    :goto_5
    iget-boolean p1, v5, Le2/v0;->d:Z

    if-nez p1, :cond_13

    invoke-virtual {p0, v1}, Lf2/y;->G(Le2/g0;)V

    return-void

    :cond_12
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_13
    :goto_6
    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lf2/y;->J:Lf2/e0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf2/e0;->J:Z

    invoke-virtual {v0}, Lf2/e0;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lf2/e0;->U:Z

    if-nez v2, :cond_0

    iput-boolean v1, v0, Lf2/e0;->U:Z

    iget-object v2, v0, Lf2/e0;->u:Landroid/os/Handler;

    iget-object v0, v0, Lf2/e0;->W:Landroidx/lifecycle/f0;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p0, p0, Lf2/y;->K:Lh1/d;

    iput-boolean v1, p0, Lh1/d;->r:Z

    invoke-virtual {p0}, Lh1/d;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lh1/d;->y:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lh1/d;->y:Z

    iget-object v0, p0, Lh1/d;->t:Landroid/os/Handler;

    iget-object p0, p0, Lh1/d;->z:Landroidx/lifecycle/f0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 6

    iget-boolean v0, p0, Lf2/y;->p0:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lf2/y;->o0:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lf2/y;->o0:J

    iget-object v0, p0, Lf2/y;->Q0:Lf2/e1;

    iget-object v1, p0, Lf2/y;->m0:[F

    invoke-virtual {v0, p0, v1}, Lf2/e1;->a(Landroid/view/View;[F)V

    iget-object v0, p0, Lf2/y;->n0:[F

    invoke-static {v1, v0}, Lf2/k0;->l([F[F)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, p0

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf2/y;->k0:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v2

    int-to-float v1, v1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v3, v1

    sub-float/2addr v5, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lf2/y;->q0:J

    :cond_1
    return-void
.end method

.method public final E(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lf2/y;->o0:J

    iget-object v0, p0, Lf2/y;->Q0:Lf2/e1;

    iget-object v1, p0, Lf2/y;->m0:[F

    invoke-virtual {v0, p0, v1}, Lf2/e1;->a(Landroid/view/View;[F)V

    iget-object v0, p0, Lf2/y;->n0:[F

    invoke-static {v1, v0}, Lf2/k0;->l([F[F)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long v2, v3, v0

    const-wide v7, 0xffffffffL

    and-long v4, v5, v7

    or-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Lm1/z;->b(J[F)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    shr-long v4, v1, v0

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    and-long/2addr v1, v7

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v3, p1

    shl-long v0, v1, v0

    and-long v2, v3, v7

    or-long/2addr v0, v2

    iput-wide v0, p0, Lf2/y;->q0:J

    return-void
.end method

.method public final F()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final G(Le2/g0;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le2/g0;->s()Le2/e0;

    move-result-object v0

    sget-object v1, Le2/e0;->l:Le2/e0;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lf2/y;->h0:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->c:Le2/s;

    iget-wide v0, v0, Lc2/f1;->o:J

    invoke-static {v0, v1}, Lb3/a;->f(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lb3/a;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void
.end method

.method public final H(J)J
    .locals 6

    invoke-virtual {p0}, Lf2/y;->D()V

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-wide v2, p0, Lf2/y;->q0:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v4, p0, Lf2/y;->q0:J

    and-long/2addr v4, v2

    long-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v4, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long v0, v4, v0

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    iget-object p0, p0, Lf2/y;->n0:[F

    invoke-static {p1, p2, p0}, Lm1/z;->b(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final I(Landroid/view/MotionEvent;)I
    .locals 10

    iget-boolean v0, p0, Lf2/y;->R0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lf2/y;->R0:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iget-object v2, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lf2/t2;->a:Lr0/e1;

    new-instance v3, Ly1/b0;

    invoke-direct {v3, v0}, Ly1/b0;-><init>(I)V

    invoke-virtual {v2, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lf2/y;->S:Ly1/i;

    invoke-virtual {v0, p1, p0}, Ly1/i;->c(Landroid/view/MotionEvent;Lf2/y;)Lg5/s;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    iget-object v4, p0, Lf2/y;->T:Lf8/p2;

    if-eqz v2, :cond_9

    iget-object v1, v2, Lg5/s;->l:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ltz v5, :cond_3

    :goto_0
    add-int/lit8 v8, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ly1/w;

    iget-boolean v9, v9, Ly1/w;->e:Z

    if-eqz v9, :cond_1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_4

    :cond_1
    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_0

    :cond_3
    :goto_1
    move-object v5, v6

    :cond_4
    check-cast v5, Ly1/w;

    if-eqz v5, :cond_5

    iget-wide v8, v5, Ly1/w;->d:J

    iput-wide v8, p0, Lf2/y;->l:J

    :cond_5
    invoke-virtual {p0, p1}, Lf2/y;->q(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {v4, v2, p0, v1}, Lf8/p2;->g(Lg5/s;Lf2/y;Z)I

    move-result p0

    iput-object v6, v2, Lg5/s;->m:Ljava/lang/Object;

    if-eqz v3, :cond_6

    if-ne v3, v7, :cond_7

    :cond_6
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_8

    :cond_7
    return p0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v1, v0, Ly1/i;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v0, Ly1/i;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return p0

    :cond_9
    iget-boolean p0, v4, Lf8/p2;->a:Z

    if-nez p0, :cond_a

    iget-object p0, v4, Lf8/p2;->d:Ljava/lang/Object;

    check-cast p0, Lq3/k;

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lk/q;

    invoke-virtual {p0}, Lk/q;->a()V

    iget-object p0, v4, Lf8/p2;->c:Ljava/lang/Object;

    check-cast p0, Ly1/d;

    invoke-virtual {p0}, Ly1/d;->c()V

    :cond_a
    return v1
.end method

.method public final J(Landroid/view/MotionEvent;IJZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, -0x1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x9

    if-eq v5, v2, :cond_2

    const/16 v2, 0xa

    if-eq v5, v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ltz v3, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    sub-int/2addr v2, v7

    if-nez v2, :cond_4

    return-void

    :cond_4
    new-array v7, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_5

    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    new-array v8, v2, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_6

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_9

    if-ltz v3, :cond_8

    if-ge v9, v3, :cond_7

    goto :goto_5

    :cond_7
    move v10, v6

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v10, 0x0

    :goto_6
    add-int/2addr v10, v9

    aget-object v11, v7, v9

    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v11, v8, v9

    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v13, v10

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    int-to-long v4, v10

    const/16 v10, 0x20

    shl-long/2addr v13, v10

    const-wide v15, 0xffffffffL

    and-long/2addr v4, v15

    or-long/2addr v4, v13

    invoke-virtual {v0, v4, v5}, Lf2/y;->t(J)J

    move-result-wide v4

    shr-long v13, v4, v10

    long-to-int v10, v13

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    and-long/2addr v4, v15

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iput v4, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p2

    goto :goto_4

    :cond_9
    if-eqz p5, :cond_a

    const/4 v10, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    move v10, v4

    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-nez v3, :cond_b

    move-wide/from16 v3, p3

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    :goto_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move/from16 v5, p2

    move v6, v2

    move-wide v1, v3

    move-wide/from16 v3, p3

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, v0, Lf2/y;->S:Ly1/i;

    invoke-virtual {v2, v1, v0}, Ly1/i;->c(Landroid/view/MotionEvent;Lf2/y;)Lg5/s;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v0, Lf2/y;->T:Lf8/p2;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lf8/p2;->g(Lg5/s;Lf2/y;Z)I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final K(Li9/e;La9/c;)V
    .locals 4

    instance-of v0, p2, Lf2/x;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf2/x;

    iget v1, v0, Lf2/x;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf2/x;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf2/x;

    invoke-direct {v0, p0, p2}, Lf2/x;-><init>(Lf2/y;La9/c;)V

    :goto_0
    iget-object p2, v0, Lf2/x;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lf2/x;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lf2/s;

    const/4 v2, 0x2

    invoke-direct {p2, p0, v2}, Lf2/s;-><init>(Lf2/y;I)V

    iput v3, v0, Lf2/x;->n:I

    new-instance v2, Landroidx/lifecycle/j0;

    const/4 v3, 0x0

    iget-object p0, p0, Lf2/y;->w0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, p2, p0, p1, v3}, Landroidx/lifecycle/j0;-><init>(Li9/c;Ljava/util/concurrent/atomic/AtomicReference;Li9/e;Ly8/c;)V

    invoke-static {v2, v0}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-void

    :cond_3
    :goto_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final L(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Lf2/y;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v1}, Lf2/y;->setConfiguration(Landroid/content/res/Configuration;)V

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ll7/a;->a(Landroid/content/Context;)Lb3/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lf2/y;->setDensity(Lb3/c;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const v2, -0x5000e280

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_3

    invoke-static {v0}, Lb5/c;->a(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-lt v1, v3, :cond_4

    invoke-static {p1}, Lb5/c;->a(Landroid/content/res/Configuration;)I

    move-result v2

    :cond_4
    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lr5/h1;->e(Landroid/content/Context;)Lt2/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lf2/y;->setFontFamilyResolver(Lt2/d;)V

    :cond_5
    return-void
.end method

.method public final M()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lf2/y;->k0:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-wide v2, v0, Lf2/y;->j0:J

    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v5, v5

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    long-to-int v2, v2

    const/4 v3, 0x0

    aget v8, v1, v3

    const/4 v9, 0x1

    if-ne v5, v8, :cond_0

    aget v10, v1, v9

    if-ne v2, v10, :cond_0

    iget-wide v10, v0, Lf2/y;->o0:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    :cond_0
    aget v1, v1, v9

    int-to-long v10, v8

    shl-long/2addr v10, v4

    int-to-long v12, v1

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    iput-wide v10, v0, Lf2/y;->j0:J

    const v1, 0x7fffffff

    if-eq v5, v1, :cond_1

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->p:Le2/x0;

    invoke-virtual {v1}, Le2/x0;->w0()V

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lf2/y;->D()V

    iget-object v2, v0, Lf2/y;->T0:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lf2/y;->T0:Landroid/view/View;

    :cond_2
    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v5

    iget-wide v10, v0, Lf2/y;->j0:J

    iget-wide v12, v0, Lf2/y;->q0:J

    invoke-static {v12, v13}, Lr5/h1;->D(J)J

    move-result-wide v12

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lf2/y;->m0:[F

    array-length v15, v14

    move/from16 v16, v3

    const/16 v3, 0x10

    const/16 v17, 0x2

    if-ge v15, v3, :cond_3

    move/from16 v3, v16

    goto/16 :goto_3

    :cond_3
    aget v3, v14, v16

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v15

    const/16 v18, 0x0

    if-nez v3, :cond_4

    aget v3, v14, v9

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    aget v3, v14, v17

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    const/4 v3, 0x4

    aget v3, v14, v3

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    const/4 v3, 0x5

    aget v3, v14, v3

    cmpg-float v3, v3, v15

    if-nez v3, :cond_4

    const/4 v3, 0x6

    aget v3, v14, v3

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    const/16 v3, 0x8

    aget v3, v14, v3

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    const/16 v3, 0x9

    aget v3, v14, v3

    cmpg-float v3, v3, v18

    if-nez v3, :cond_4

    const/16 v3, 0xa

    aget v3, v14, v3

    cmpg-float v3, v3, v15

    if-nez v3, :cond_4

    move v3, v9

    goto :goto_1

    :cond_4
    move/from16 v3, v16

    :goto_1
    const/16 v19, 0xc

    aget v19, v14, v19

    cmpg-float v19, v19, v18

    if-nez v19, :cond_5

    const/16 v19, 0xd

    aget v19, v14, v19

    cmpg-float v19, v19, v18

    if-nez v19, :cond_5

    const/16 v19, 0xe

    aget v19, v14, v19

    cmpg-float v18, v19, v18

    if-nez v18, :cond_5

    const/16 v18, 0xf

    aget v18, v14, v18

    cmpg-float v15, v18, v15

    if-nez v15, :cond_5

    move v15, v9

    goto :goto_2

    :cond_5
    move/from16 v15, v16

    :goto_2
    shl-int/2addr v3, v9

    or-int/2addr v3, v15

    :goto_3
    iget-object v15, v5, Ln2/b;->b:Ln2/e;

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    :goto_4
    move-wide/from16 v17, v6

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    :goto_5
    iget-wide v6, v15, Ln2/e;->d:J

    invoke-static {v12, v13, v6, v7}, Lb3/j;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_7

    iput-wide v12, v15, Ln2/e;->d:J

    move v3, v9

    goto :goto_6

    :cond_7
    move/from16 v3, v16

    :goto_6
    iget-wide v6, v15, Ln2/e;->e:J

    invoke-static {v10, v11, v6, v7}, Lb3/j;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_8

    iput-wide v10, v15, Ln2/e;->e:J

    move v3, v9

    :cond_8
    if-eqz v14, :cond_9

    iput-object v14, v15, Ln2/e;->g:[F

    move v3, v9

    :cond_9
    int-to-long v6, v8

    shl-long/2addr v6, v4

    int-to-long v10, v2

    and-long v10, v10, v17

    or-long/2addr v6, v10

    iget-wide v10, v15, Ln2/e;->f:J

    cmp-long v2, v6, v10

    if-eqz v2, :cond_a

    iput-wide v6, v15, Ln2/e;->f:J

    move v3, v9

    :cond_a
    if-nez v3, :cond_c

    iget-boolean v2, v5, Ln2/b;->e:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v3, v16

    goto :goto_8

    :cond_c
    :goto_7
    move v3, v9

    :goto_8
    iput-boolean v3, v5, Ln2/b;->e:Z

    iget-object v2, v0, Lf2/y;->i0:Le2/v0;

    invoke-virtual {v2, v1}, Le2/v0;->a(Z)V

    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    invoke-virtual {v0}, Ln2/b;->a()V

    return-void
.end method

.method public final N(F)V
    .locals 2

    iget-boolean v0, p0, Lf2/y;->w:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lf2/y;->J0:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lf2/y;->J0:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_0
    iput p1, p0, Lf2/y;->J0:F

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget v0, p0, Lf2/y;->K0:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lf2/y;->K0:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    iput p1, p0, Lf2/y;->K0:F

    :cond_3
    return-void
.end method

.method public final a(Lk1/b0;Lk1/b0;)V
    .locals 12

    if-eqz p1, :cond_1e

    move-object p0, p1

    check-cast p0, Lf1/q;

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    const-string v1, "visitAncestors called on an unattached node"

    if-nez v0, :cond_0

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    invoke-static {p1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    const/16 v3, 0x10

    const/high16 v4, 0x200000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_c

    iget-object v7, p1, Le2/g0;->R:Le2/c1;

    iget-object v7, v7, Le2/c1;->f:Lf1/q;

    iget v7, v7, Lf1/q;->o:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_a

    :goto_1
    if-eqz p0, :cond_a

    iget v7, p0, Lf1/q;->n:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_9

    move-object v7, p0

    move-object v8, v0

    :goto_2
    if-eqz v7, :cond_9

    instance-of v9, v7, Lv1/c;

    if-eqz v9, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    iget v9, v7, Lf1/q;->n:I

    and-int/2addr v9, v4

    if-eqz v9, :cond_8

    instance-of v9, v7, Le2/k;

    if-eqz v9, :cond_8

    move-object v9, v7

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v5

    :goto_3
    if-eqz v9, :cond_7

    iget v11, v9, Lf1/q;->n:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_6

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v6, :cond_3

    move-object v7, v9

    goto :goto_4

    :cond_3
    if-nez v8, :cond_4

    new-instance v8, Lt0/b;

    new-array v11, v3, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v7, v0

    :cond_5
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_7
    if-ne v10, v6, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v7

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p1, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_b

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_b
    move-object p0, v0

    goto :goto_0

    :cond_c
    if-nez v2, :cond_d

    goto/16 :goto_e

    :cond_d
    if-eqz p2, :cond_1b

    iget-object p0, p2, Lf1/q;->l:Lf1/q;

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_e

    invoke-static {v1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p0, p2, Lf1/q;->l:Lf1/q;

    invoke-static {p2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    move-object p2, v0

    :goto_6
    if-eqz p1, :cond_1a

    iget-object v1, p1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->f:Lf1/q;

    iget v1, v1, Lf1/q;->o:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_18

    :goto_7
    if-eqz p0, :cond_18

    iget v1, p0, Lf1/q;->n:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_17

    move-object v1, p0

    move-object v7, v0

    :goto_8
    if-eqz v1, :cond_17

    instance-of v8, v1, Lv1/c;

    if-eqz v8, :cond_10

    if-nez p2, :cond_f

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_f
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    iget v8, v1, Lf1/q;->n:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_16

    instance-of v8, v1, Le2/k;

    if-eqz v8, :cond_16

    move-object v8, v1

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v5

    :goto_9
    if-eqz v8, :cond_15

    iget v10, v8, Lf1/q;->n:I

    and-int/2addr v10, v4

    if-eqz v10, :cond_14

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_11

    move-object v1, v8

    goto :goto_a

    :cond_11
    if-nez v7, :cond_12

    new-instance v7, Lt0/b;

    new-array v10, v3, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v7, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v0

    :cond_13
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_14
    :goto_a
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_9

    :cond_15
    if-ne v9, v6, :cond_16

    goto :goto_8

    :cond_16
    :goto_b
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_8

    :cond_17
    iget-object p0, p0, Lf1/q;->p:Lf1/q;

    goto :goto_7

    :cond_18
    invoke-virtual {p1}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p0, p1, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_19

    iget-object p0, p0, Le2/c1;->e:Le2/b2;

    goto :goto_6

    :cond_19
    move-object p0, v0

    goto :goto_6

    :cond_1a
    move-object v0, p2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, v5

    :goto_c
    if-ge p1, p0, :cond_1e

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv1/c;

    if-eqz v0, :cond_1c

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_d

    :cond_1c
    move v1, v5

    :goto_d
    if-nez v1, :cond_1d

    invoke-interface {p2}, Lv1/c;->W()V

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1e
    :goto_e
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 12

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    iget-object v0, v0, Lk1/o;->c:Lk1/b0;

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    const-string v2, "visitSubtreeIf called on an unattached node"

    if-nez v1, :cond_1

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lt0/b;

    const/16 v3, 0x10

    new-array v4, v3, [Lf1/q;

    invoke-direct {v1, v4}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v4, v0, Lf1/q;->q:Lf1/q;

    if-nez v4, :cond_2

    invoke-static {v1, v0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_0
    iget v0, v1, Lt0/b;->n:I

    if-eqz v0, :cond_1a

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/q;

    iget v4, v0, Lf1/q;->o:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_19

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_19

    iget-boolean v5, v4, Lf1/q;->y:Z

    if-eqz v5, :cond_19

    iget v5, v4, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v5

    :goto_2
    if-eqz v6, :cond_18

    instance-of v8, v6, Lk1/b0;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_11

    check-cast v6, Lk1/b0;

    iget-boolean v8, v6, Lf1/q;->y:Z

    if-eqz v8, :cond_17

    invoke-virtual {v6}, Lk1/b0;->O0()Lk1/s;

    move-result-object v6

    iget-boolean v6, v6, Lk1/s;->a:Z

    if-eqz v6, :cond_17

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p2

    check-cast p2, Lk1/o;

    iget-object p2, p2, Lk1/o;->c:Lk1/b0;

    iget-boolean p3, p2, Lf1/q;->y:Z

    if-nez p3, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object p3, p2, Lf1/q;->l:Lf1/q;

    iget-boolean p3, p3, Lf1/q;->y:Z

    if-nez p3, :cond_4

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    new-instance p3, Lt0/b;

    new-array v0, v3, [Lf1/q;

    invoke-direct {p3, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p2, p2, Lf1/q;->l:Lf1/q;

    iget-object v0, p2, Lf1/q;->q:Lf1/q;

    if-nez v0, :cond_5

    invoke-static {p3, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_3
    iget p2, p3, Lt0/b;->n:I

    if-eqz p2, :cond_10

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p2}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf1/q;

    iget v0, p2, Lf1/q;->o:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_f

    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_f

    iget v1, v0, Lf1/q;->n:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_e

    move-object v1, v0

    move-object v2, v5

    :goto_5
    if-eqz v1, :cond_e

    instance-of v4, v1, Lk1/b0;

    if-eqz v4, :cond_7

    check-cast v1, Lk1/b0;

    iget-boolean v4, v1, Lf1/q;->y:Z

    if-nez v4, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v1}, Lk1/b0;->O0()Lk1/s;

    move-result-object v4

    iget-boolean v6, v1, Lf1/q;->y:Z

    if-eqz v6, :cond_d

    iget-boolean v1, v1, Lk1/b0;->z:Z

    if-nez v1, :cond_d

    iget-boolean v1, v4, Lk1/s;->a:Z

    if-eqz v1, :cond_d

    goto/16 :goto_c

    :cond_7
    iget v4, v1, Lf1/q;->n:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_d

    instance-of v4, v1, Le2/k;

    if-eqz v4, :cond_d

    move-object v4, v1

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    move v6, v10

    :goto_6
    if-eqz v4, :cond_c

    iget v7, v4, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_b

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_8

    move-object v1, v4

    goto :goto_7

    :cond_8
    if-nez v2, :cond_9

    new-instance v2, Lt0/b;

    new-array v7, v3, [Lf1/q;

    invoke-direct {v2, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v2, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v5

    :cond_a
    invoke-virtual {v2, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_b
    :goto_7
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_6

    :cond_c
    if-ne v6, v9, :cond_d

    goto :goto_5

    :cond_d
    :goto_8
    invoke-static {v2}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_5

    :cond_e
    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_f
    invoke-static {p3, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto/16 :goto_3

    :cond_10
    :goto_9
    if-eqz p1, :cond_1a

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_11
    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_17

    instance-of v8, v6, Le2/k;

    if-eqz v8, :cond_17

    move-object v8, v6

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    :goto_a
    if-eqz v8, :cond_16

    iget v11, v8, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_15

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v9, :cond_12

    move-object v6, v8

    goto :goto_b

    :cond_12
    if-nez v7, :cond_13

    new-instance v7, Lt0/b;

    new-array v11, v3, [Lf1/q;

    invoke-direct {v7, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_14
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_15
    :goto_b
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_a

    :cond_16
    if-ne v10, v9, :cond_17

    goto/16 :goto_2

    :cond_17
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto/16 :goto_2

    :cond_18
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto/16 :goto_1

    :cond_19
    invoke-static {v1, v0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto/16 :goto_0

    :cond_1a
    :goto_c
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lf2/y;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lf2/y;->W:Lg1/c;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    iget-object v6, v1, Lg1/c;->m:Lm2/r;

    iget-object v6, v6, Lm2/r;->c:Lk/k;

    invoke-virtual {v6, v4}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/g0;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Le2/g0;->x()Lm2/m;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lm2/m;->l:Lk/m0;

    sget-object v6, Lm2/l;->g:Lm2/w;

    invoke-virtual {v4, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v6, v7

    :cond_0
    check-cast v6, Lm2/a;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lm2/a;->b:Lt8/e;

    check-cast v6, Li9/c;

    if-eqz v6, :cond_1

    new-instance v8, Lp2/g;

    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    :cond_1
    sget-object v6, Lm2/l;->h:Lm2/w;

    invoke-virtual {v4, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    check-cast v7, Lm2/a;

    if-eqz v7, :cond_3

    iget-object v4, v7, Lm2/a;->b:Lt8/e;

    check-cast v4, Li9/c;

    if-eqz v4, :cond_3

    new-instance v6, Lg1/f;

    invoke-direct {v6, v5}, Lg1/f;-><init>(Landroid/view/autofill/AutofillValue;)V

    invoke-interface {v4, v6}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lf2/y;->V:Lg5/i;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast p0, Lg1/j;

    iget-object v1, p0, Lg1/j;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v3, p0, Lg1/j;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_7
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    move-result v2

    if-nez v2, :cond_8

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    new-instance p0, Lt8/i;

    const-string p1, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lt8/i;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lt8/i;

    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    return-void
.end method

.method public final b(Landroidx/lifecycle/v;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    invoke-static {}, Lf2/k0;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Lf2/y;->setShowLayoutBounds(Z)V

    :cond_0
    iget-object p1, p0, Lf2/y;->q:Lf2/z1;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lf2/y;->p:Lf2/y1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, p1, Lf2/z1;->a:Lb0/l1;

    iget-object v1, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, La1/d;

    iget-boolean v2, v1, La1/d;->l:Z

    if-eqz v2, :cond_4

    iget-boolean v1, v1, La1/d;->n:Z

    if-nez v1, :cond_4

    :try_start_0
    new-instance v1, Lc2/l0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    check-cast p0, Lf2/h3;

    iget-object p0, p0, Lf2/h3;->a:Lr0/u;

    invoke-virtual {p0, v1}, Lr0/u;->s(Lc2/l0;)Lr0/f;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, La1/d;

    iget-boolean v0, p0, La1/d;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, La1/d;->n:Z

    if-eqz v0, :cond_2

    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    invoke-static {v0}, Lb1/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, La1/d;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La1/d;->n:Z

    :goto_0
    const/4 p0, 0x0

    :goto_1
    iget-object v0, p1, Lf2/z1;->d:Lr0/f;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lr0/f;->cancel()V

    :cond_3
    iput-object p0, p1, Lf2/z1;->d:Lr0/f;

    :cond_4
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Lf2/y;->l:J

    iget-object p0, p0, Lf2/y;->J:Lf2/e0;

    invoke-virtual {p0, p1, v1, v2, v0}, Lf2/e0;->f(IJZ)Z

    move-result p0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-wide v1, p0, Lf2/y;->l:J

    iget-object p0, p0, Lf2/y;->J:Lf2/e0;

    invoke-virtual {p0, p1, v1, v2, v0}, Lf2/e0;->f(IJZ)Z

    move-result p0

    return p0
.end method

.method public final d(Landroidx/lifecycle/v;)V
    .locals 1

    iget-object p0, p0, Lf2/y;->q:Lf2/z1;

    if-eqz p0, :cond_5

    iget-object p1, p0, Lf2/z1;->a:Lb0/l1;

    iget-object p1, p1, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, La1/d;

    iget-boolean v0, p1, La1/d;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, La1/d;->n:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lf2/z1;->d:Lr0/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr0/f;->cancel()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lf2/z1;->d:Lr0/f;

    return-void

    :cond_1
    iget-boolean p0, p1, La1/d;->m:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p1, La1/d;->n:Z

    if-nez p0, :cond_3

    const-string p0, "ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?"

    invoke-static {p0}, Lb1/a;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p1, La1/d;->o:Lk/m0;

    invoke-virtual {p0}, Lk/m0;->i()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Attempted to start retaining exited values with pending exited values"

    invoke-static {p0}, Lb1/a;->a(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    iput-boolean p0, p1, La1/d;->n:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v0

    invoke-static {v0}, Lf2/y;->n(Le2/g0;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf2/y;->u(Z)V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v1

    invoke-virtual {v1}, Ld1/g;->m()V

    iput-boolean v0, p0, Lf2/y;->Q:Z

    iget-object v0, p0, Lf2/y;->B:Lb0/l1;

    iget-object v1, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v1, Lm1/a;

    iget-object v2, v1, Lm1/a;->a:Landroid/graphics/Canvas;

    iput-object p1, v1, Lm1/a;->a:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Le2/g0;->i(Lm1/o;Lp1/b;)V

    iget-object v0, v0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lm1/a;

    iput-object v2, v0, Lm1/a;->a:Landroid/graphics/Canvas;

    iget-object v0, p0, Lf2/y;->O:Lk/h0;

    invoke-virtual {v0}, Lk/h0;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v0, Lk/h0;->b:I

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le2/p1;

    check-cast v5, Lf2/r1;

    invoke-virtual {v5}, Lf2/r1;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lf2/r2;->l:I

    invoke-virtual {v0}, Lk/h0;->d()V

    iput-boolean v2, p0, Lf2/y;->Q:Z

    iget-object v1, p0, Lf2/y;->P:Lk/h0;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lk/h0;->c(Lk/h0;)V

    invoke-virtual {v1}, Lk/h0;->d()V

    :cond_2
    iget-boolean v0, p0, Lf2/y;->w:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lf2/y;->J0:F

    invoke-static {p0, v0}, Lf2/c1;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lf2/y;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v1, p0, Lf2/y;->K0:F

    invoke-static {v0, v1}, Lf2/c1;->a(Landroid/view/View;F)V

    iget v1, p0, Lf2/y;->K0:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lf2/y;->J0:F

    iput p1, p0, Lf2/y;->K0:F

    goto :goto_1

    :cond_4
    const-string p0, "frameRateCategoryView"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object p0

    invoke-virtual {p0}, Ln2/b;->a()V

    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lf2/y;->N0:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lf2/y;->M0:Lf2/k;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v3, :cond_0

    iput-boolean v4, v0, Lf2/y;->N0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lf2/k;->run()V

    :cond_1
    :goto_0
    invoke-static {v1}, Lf2/y;->p(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_55

    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v5, "visitAncestors called on an unattached node"

    const/4 v6, -0x1

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-ne v2, v3, :cond_33

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v2

    new-instance v3, Ld5/a;

    const/4 v10, 0x5

    invoke-direct {v3, v10, v0, v1}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lk1/o;

    iget-object v0, v2, Lk1/o;->d:Lk1/i;

    iget-boolean v0, v0, Lk1/i;->e:Z

    if-eqz v0, :cond_3

    const-string v0, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return v4

    :cond_3
    iget-object v0, v2, Lk1/o;->c:Lk1/b0;

    invoke-static {v0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_4

    invoke-static {v5}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_f

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->f:Lf1/q;

    iget v2, v2, Lf1/q;->o:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_d

    :goto_2
    if-eqz v1, :cond_d

    iget v2, v1, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_c

    move-object v2, v1

    const/4 v10, 0x0

    :goto_3
    if-eqz v2, :cond_c

    instance-of v11, v2, Lf2/m;

    if-eqz v11, :cond_5

    goto :goto_6

    :cond_5
    iget v11, v2, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_b

    instance-of v11, v2, Le2/k;

    if-eqz v11, :cond_b

    move-object v11, v2

    check-cast v11, Le2/k;

    iget-object v11, v11, Le2/k;->A:Lf1/q;

    move v12, v4

    :goto_4
    if-eqz v11, :cond_a

    iget v13, v11, Lf1/q;->n:I

    and-int/lit16 v13, v13, 0x4000

    if-eqz v13, :cond_9

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_6

    move-object v2, v11

    goto :goto_5

    :cond_6
    if-nez v10, :cond_7

    new-instance v10, Lt0/b;

    new-array v13, v8, [Lf1/q;

    invoke-direct {v10, v13}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v10, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {v10, v11}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v11, v11, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v12, v9, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {v10}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v2

    goto :goto_3

    :cond_c
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_e

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto :goto_1

    :cond_e
    const/4 v1, 0x0

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    :goto_6
    check-cast v2, Lf2/m;

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_32

    move-object v0, v2

    check-cast v0, Lf1/q;

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_11

    invoke-static {v5}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    invoke-static {v2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    const/4 v5, 0x0

    :goto_8
    if-eqz v2, :cond_1d

    iget-object v10, v2, Le2/g0;->R:Le2/c1;

    iget-object v10, v10, Le2/c1;->f:Lf1/q;

    iget v10, v10, Lf1/q;->o:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_1b

    :goto_9
    if-eqz v1, :cond_1b

    iget v10, v1, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_1a

    move-object v10, v1

    const/4 v11, 0x0

    :goto_a
    if-eqz v10, :cond_1a

    instance-of v12, v10, Lf2/m;

    if-eqz v12, :cond_13

    if-nez v5, :cond_12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    iget v12, v10, Lf1/q;->n:I

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_19

    instance-of v12, v10, Le2/k;

    if-eqz v12, :cond_19

    move-object v12, v10

    check-cast v12, Le2/k;

    iget-object v12, v12, Le2/k;->A:Lf1/q;

    move v13, v4

    :goto_b
    if-eqz v12, :cond_18

    iget v14, v12, Lf1/q;->n:I

    and-int/lit16 v14, v14, 0x4000

    if-eqz v14, :cond_17

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_14

    move-object v10, v12

    goto :goto_c

    :cond_14
    if-nez v11, :cond_15

    new-instance v11, Lt0/b;

    new-array v14, v8, [Lf1/q;

    invoke-direct {v11, v14}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_15
    if-eqz v10, :cond_16

    invoke-virtual {v11, v10}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v10, 0x0

    :cond_16
    invoke-virtual {v11, v12}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_17
    :goto_c
    iget-object v12, v12, Lf1/q;->q:Lf1/q;

    goto :goto_b

    :cond_18
    if-ne v13, v9, :cond_19

    goto :goto_a

    :cond_19
    :goto_d
    invoke-static {v11}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v10

    goto :goto_a

    :cond_1a
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_9

    :cond_1b
    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v1, v2, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto :goto_8

    :cond_1c
    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    if-eqz v5, :cond_1f

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v6

    if-ltz v1, :cond_1f

    :goto_e
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v2, :cond_1e

    goto :goto_f

    :cond_1e
    move v1, v2

    goto :goto_e

    :cond_1f
    :goto_f
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    const/4 v2, 0x0

    :goto_10
    if-eqz v1, :cond_27

    instance-of v6, v1, Lf2/m;

    if-eqz v6, :cond_20

    check-cast v1, Lf2/m;

    goto :goto_13

    :cond_20
    iget v6, v1, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_26

    instance-of v6, v1, Le2/k;

    if-eqz v6, :cond_26

    move-object v6, v1

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v10, v4

    :goto_11
    if-eqz v6, :cond_25

    iget v11, v6, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_24

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v9, :cond_21

    move-object v1, v6

    goto :goto_12

    :cond_21
    if-nez v2, :cond_22

    new-instance v2, Lt0/b;

    new-array v11, v8, [Lf1/q;

    invoke-direct {v2, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_22
    if-eqz v1, :cond_23

    invoke-virtual {v2, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_23
    invoke-virtual {v2, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_24
    :goto_12
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_11

    :cond_25
    if-ne v10, v9, :cond_26

    goto :goto_10

    :cond_26
    :goto_13
    invoke-static {v2}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_10

    :cond_27
    invoke-virtual {v3}, Ld5/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    goto/16 :goto_19

    :cond_28
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    const/4 v1, 0x0

    :goto_14
    if-eqz v0, :cond_30

    instance-of v2, v0, Lf2/m;

    if-eqz v2, :cond_29

    check-cast v0, Lf2/m;

    goto :goto_17

    :cond_29
    iget v2, v0, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_2f

    instance-of v2, v0, Le2/k;

    if-eqz v2, :cond_2f

    move-object v2, v0

    check-cast v2, Le2/k;

    iget-object v2, v2, Le2/k;->A:Lf1/q;

    move v3, v4

    :goto_15
    if-eqz v2, :cond_2e

    iget v6, v2, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_2d

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v9, :cond_2a

    move-object v0, v2

    goto :goto_16

    :cond_2a
    if-nez v1, :cond_2b

    new-instance v1, Lt0/b;

    new-array v6, v8, [Lf1/q;

    invoke-direct {v1, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2b
    if-eqz v0, :cond_2c

    invoke-virtual {v1, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_2c
    invoke-virtual {v1, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2d
    :goto_16
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_15

    :cond_2e
    if-ne v3, v9, :cond_2f

    goto :goto_14

    :cond_2f
    :goto_17
    invoke-static {v1}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v0

    goto :goto_14

    :cond_30
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v4

    :goto_18
    if-ge v1, v0, :cond_32

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf2/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_31
    invoke-virtual/range {p0 .. p1}, Lf2/y;->m(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_32

    :goto_19
    return v9

    :cond_32
    return v4

    :cond_33
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, v0, Lf2/y;->n:Lv1/a;

    iget-object v10, v0, Lf2/y;->S:Ly1/i;

    iget-object v11, v10, Ly1/i;->e:Lk/q;

    iget-object v12, v10, Ly1/i;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    invoke-virtual {v10, v1}, Ly1/i;->b(Landroid/view/MotionEvent;)V

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ne v13, v14, :cond_34

    invoke-virtual {v12}, Landroid/util/SparseLongArray;->clear()V

    iget-object v1, v10, Ly1/i;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    move-object/from16 v22, v5

    move/from16 v16, v6

    move/from16 v18, v8

    const/4 v3, 0x0

    goto/16 :goto_2d

    :cond_34
    invoke-virtual {v10, v1}, Ly1/i;->a(Landroid/view/MotionEvent;)V

    const/4 v14, 0x6

    if-eq v13, v9, :cond_36

    if-eq v13, v14, :cond_35

    move/from16 v16, v6

    goto :goto_1a

    :cond_35
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    move/from16 v40, v16

    move/from16 v16, v6

    move/from16 v6, v40

    goto :goto_1a

    :cond_36
    move/from16 v16, v6

    move v6, v4

    :goto_1a
    const/4 v7, 0x5

    if-eqz v13, :cond_37

    if-eq v13, v15, :cond_37

    if-eq v13, v7, :cond_37

    move/from16 v17, v4

    :goto_1b
    move/from16 v18, v8

    goto :goto_1c

    :cond_37
    move/from16 v17, v9

    goto :goto_1b

    :goto_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v4

    :goto_1d
    if-ge v7, v8, :cond_40

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move/from16 v19, v9

    invoke-virtual {v12, v15}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    const-wide/16 v20, 0x1

    if-ltz v9, :cond_38

    invoke-virtual {v12, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v22

    move-wide/from16 v40, v22

    move-object/from16 v22, v5

    move-wide/from16 v4, v40

    move-object/from16 v24, v3

    goto :goto_1e

    :cond_38
    move-object/from16 v22, v5

    iget-wide v4, v10, Ly1/i;->a:J

    move-object/from16 v24, v3

    add-long v2, v4, v20

    iput-wide v2, v10, Ly1/i;->a:J

    invoke-virtual {v12, v15, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    :goto_1e
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move-object v15, v10

    int-to-long v9, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v25, 0x20

    shl-long v9, v9, v25

    const-wide v26, 0xffffffffL

    and-long v2, v2, v26

    or-long v30, v9, v2

    if-eq v7, v6, :cond_39

    move/from16 v32, v19

    goto :goto_1f

    :cond_39
    const/16 v32, 0x0

    :goto_1f
    invoke-virtual {v11, v4, v5}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/h;

    const-wide/32 v9, 0x7fffffff

    if-ne v7, v6, :cond_3a

    invoke-virtual {v11, v4, v5}, Lk/q;->j(J)V

    move-wide v3, v4

    move-wide/from16 v33, v9

    move/from16 v9, v25

    const v5, 0xffff

    goto :goto_21

    :cond_3a
    if-eqz v17, :cond_3b

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    and-long v28, v28, v9

    shl-long v28, v28, v19

    or-long v28, v20, v28

    move-wide/from16 v33, v9

    shr-long v9, v30, v25

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    float-to-int v9, v9

    int-to-short v9, v9

    move-wide/from16 v35, v4

    const v5, 0xffff

    and-long v3, v30, v26

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    float-to-int v3, v3

    int-to-short v3, v3

    shl-int/lit8 v4, v9, 0x10

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    int-to-long v3, v3

    shl-long v3, v3, v25

    or-long v3, v28, v3

    new-instance v9, Ly1/h;

    invoke-direct {v9, v3, v4}, Ly1/h;-><init>(J)V

    move-wide/from16 v3, v35

    invoke-virtual {v11, v3, v4, v9}, Lk/q;->i(JLjava/lang/Object;)V

    :goto_20
    move/from16 v9, v25

    goto :goto_21

    :cond_3b
    move-wide v3, v4

    move-wide/from16 v33, v9

    const v5, 0xffff

    goto :goto_20

    :goto_21
    new-instance v25, Lv1/b;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    move-wide/from16 v34, v33

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v33

    move/from16 v36, v5

    move v10, v6

    if-eqz v2, :cond_3c

    iget-wide v5, v2, Ly1/h;->a:J

    shr-long v5, v5, v19

    and-long v5, v5, v34

    :goto_22
    move-wide/from16 v34, v5

    goto :goto_23

    :cond_3c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    goto :goto_22

    :goto_23
    if-eqz v2, :cond_3d

    iget-wide v5, v2, Ly1/h;->a:J

    ushr-long/2addr v5, v9

    long-to-int v5, v5

    ushr-int/lit8 v6, v5, 0x10

    int-to-short v6, v6

    int-to-float v6, v6

    and-int v5, v5, v36

    int-to-short v5, v5

    int-to-float v5, v5

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move/from16 v36, v9

    move/from16 v39, v10

    int-to-long v9, v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v9, v9, v36

    and-long v5, v5, v26

    or-long/2addr v5, v9

    move-wide/from16 v36, v5

    goto :goto_24

    :cond_3d
    move/from16 v39, v10

    move-wide/from16 v36, v30

    :goto_24
    if-eqz v2, :cond_3f

    iget-wide v5, v2, Ly1/h;->a:J

    and-long v5, v5, v20

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-eqz v2, :cond_3e

    move/from16 v2, v19

    goto :goto_25

    :cond_3e
    const/4 v2, 0x0

    :goto_25
    move/from16 v38, v2

    :goto_26
    move-wide/from16 v26, v3

    goto :goto_27

    :cond_3f
    const/16 v38, 0x0

    goto :goto_26

    :goto_27
    invoke-direct/range {v25 .. v38}, Lv1/b;-><init>(JJJZFJJZ)V

    move-object/from16 v2, v25

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object v10, v15

    move/from16 v9, v19

    move-object/from16 v5, v22

    move-object/from16 v3, v24

    move/from16 v6, v39

    const/high16 v2, 0x200000

    const/4 v4, 0x0

    const/4 v15, 0x2

    goto/16 :goto_1d

    :cond_40
    move-object/from16 v24, v3

    move-object/from16 v22, v5

    move/from16 v19, v9

    move-object v15, v10

    invoke-virtual {v15, v1}, Ly1/i;->d(Landroid/view/MotionEvent;)V

    if-eqz v24, :cond_41

    move-object/from16 v2, v24

    iget v2, v2, Lv1/a;->a:I

    goto :goto_2c

    :cond_41
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-virtual {v1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_47

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    move/from16 v4, v19

    invoke-virtual {v2, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-eqz v3, :cond_42

    if-nez v2, :cond_42

    :goto_28
    const/4 v2, 0x1

    goto :goto_2c

    :cond_42
    if-eqz v2, :cond_43

    if-nez v3, :cond_43

    :goto_29
    const/4 v2, 0x2

    goto :goto_2c

    :cond_43
    if-eqz v3, :cond_47

    if-eqz v2, :cond_47

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v2

    cmpl-float v4, v3, v2

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    if-lez v4, :cond_45

    cmpg-float v4, v2, v6

    if-nez v4, :cond_44

    goto :goto_2a

    :cond_44
    div-float v4, v3, v2

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_45

    :goto_2a
    goto :goto_28

    :cond_45
    cmpl-float v4, v2, v3

    if-lez v4, :cond_47

    cmpg-float v4, v3, v6

    if-nez v4, :cond_46

    goto :goto_2b

    :cond_46
    div-float/2addr v2, v3

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_47

    :goto_2b
    goto :goto_29

    :cond_47
    const/4 v2, 0x0

    :goto_2c
    new-instance v3, Ld1/c0;

    if-eqz v13, :cond_48

    const/4 v4, 0x1

    if-eq v13, v4, :cond_48

    const/4 v4, 0x2

    if-eq v13, v4, :cond_48

    const/4 v4, 0x5

    if-eq v13, v4, :cond_48

    const/4 v4, 0x6

    :cond_48
    invoke-direct {v3, v14, v2, v1}, Ld1/c0;-><init>(Ljava/util/ArrayList;ILandroid/view/MotionEvent;)V

    :goto_2d
    iget-object v1, v0, Lf2/y;->O0:Lf2/t1;

    if-eqz v3, :cond_6f

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    iget-object v2, v0, Lk1/o;->d:Lk1/i;

    iget-boolean v2, v2, Lk1/i;->e:Z

    if-eqz v2, :cond_4a

    const-string v0, "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated."

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_49
    const/4 v0, 0x0

    goto/16 :goto_43

    :cond_4a
    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_4b

    invoke-static/range {v22 .. v22}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4b
    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_2e
    if-eqz v0, :cond_56

    iget-object v4, v0, Le2/g0;->R:Le2/c1;

    iget-object v4, v4, Le2/c1;->f:Lf1/q;

    iget v4, v4, Lf1/q;->o:I

    const/high16 v23, 0x200000

    and-int v4, v4, v23

    if-eqz v4, :cond_54

    :goto_2f
    if-eqz v2, :cond_54

    iget v4, v2, Lf1/q;->n:I

    and-int v4, v4, v23

    if-eqz v4, :cond_53

    move-object v4, v2

    const/4 v5, 0x0

    :goto_30
    if-eqz v4, :cond_53

    instance-of v6, v4, Lv1/c;

    if-eqz v6, :cond_4c

    goto :goto_35

    :cond_4c
    iget v6, v4, Lf1/q;->n:I

    and-int v6, v6, v23

    if-eqz v6, :cond_52

    instance-of v6, v4, Le2/k;

    if-eqz v6, :cond_52

    move-object v6, v4

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_31
    if-eqz v6, :cond_51

    iget v8, v6, Lf1/q;->n:I

    and-int v8, v8, v23

    if-eqz v8, :cond_50

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4d

    move-object v4, v6

    goto :goto_32

    :cond_4d
    if-nez v5, :cond_4e

    new-instance v5, Lt0/b;

    move/from16 v8, v18

    new-array v10, v8, [Lf1/q;

    invoke-direct {v5, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4e
    if-eqz v4, :cond_4f

    invoke-virtual {v5, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_4f
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_50
    :goto_32
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    const/16 v18, 0x10

    const/high16 v23, 0x200000

    goto :goto_31

    :cond_51
    const/4 v8, 0x1

    if-ne v7, v8, :cond_52

    :goto_33
    const/16 v18, 0x10

    const/high16 v23, 0x200000

    goto :goto_30

    :cond_52
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_33

    :cond_53
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    const/16 v18, 0x10

    const/high16 v23, 0x200000

    goto :goto_2f

    :cond_54
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    if-eqz v2, :cond_55

    iget-object v2, v2, Le2/c1;->e:Le2/b2;

    goto :goto_34

    :cond_55
    const/4 v2, 0x0

    :goto_34
    const/16 v18, 0x10

    goto :goto_2e

    :cond_56
    const/4 v4, 0x0

    :goto_35
    check-cast v4, Lv1/c;

    goto :goto_36

    :cond_57
    const/4 v4, 0x0

    :goto_36
    if-eqz v4, :cond_6a

    move-object v0, v4

    check-cast v0, Lf1/q;

    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_58

    invoke-static/range {v22 .. v22}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_58
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {v4}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    const/4 v5, 0x0

    :goto_37
    if-eqz v2, :cond_64

    iget-object v6, v2, Le2/g0;->R:Le2/c1;

    iget-object v6, v6, Le2/c1;->f:Lf1/q;

    iget v6, v6, Lf1/q;->o:I

    const/high16 v23, 0x200000

    and-int v6, v6, v23

    if-eqz v6, :cond_62

    :goto_38
    if-eqz v0, :cond_62

    iget v6, v0, Lf1/q;->n:I

    and-int v6, v6, v23

    if-eqz v6, :cond_61

    move-object v6, v0

    const/4 v7, 0x0

    :goto_39
    if-eqz v6, :cond_61

    instance-of v8, v6, Lv1/c;

    if-eqz v8, :cond_5a

    if-nez v5, :cond_59

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_59
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_5a
    iget v8, v6, Lf1/q;->n:I

    const/high16 v23, 0x200000

    and-int v8, v8, v23

    if-eqz v8, :cond_60

    instance-of v8, v6, Le2/k;

    if-eqz v8, :cond_60

    move-object v8, v6

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    const/4 v10, 0x0

    :goto_3a
    if-eqz v8, :cond_5f

    iget v11, v8, Lf1/q;->n:I

    and-int v11, v11, v23

    if-eqz v11, :cond_5e

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5b

    move-object v6, v8

    goto :goto_3b

    :cond_5b
    if-nez v7, :cond_5c

    new-instance v7, Lt0/b;

    const/16 v11, 0x10

    new-array v12, v11, [Lf1/q;

    invoke-direct {v7, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_5c
    if-eqz v6, :cond_5d

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v6, 0x0

    :cond_5d
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5e
    :goto_3b
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    const/high16 v23, 0x200000

    goto :goto_3a

    :cond_5f
    const/4 v8, 0x1

    if-ne v10, v8, :cond_60

    goto :goto_39

    :cond_60
    :goto_3c
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_39

    :cond_61
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    const/high16 v23, 0x200000

    goto :goto_38

    :cond_62
    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_63

    iget-object v0, v2, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_63

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_37

    :cond_63
    const/4 v0, 0x0

    goto :goto_37

    :cond_64
    if-eqz v5, :cond_66

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_66

    :goto_3d
    add-int/lit8 v2, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/c;

    sget-object v6, Ly1/m;->l:Ly1/m;

    invoke-interface {v0, v3, v6}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    if-gez v2, :cond_65

    goto :goto_3e

    :cond_65
    move v0, v2

    goto :goto_3d

    :cond_66
    :goto_3e
    sget-object v0, Ly1/m;->l:Ly1/m;

    invoke-interface {v4, v3, v0}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    sget-object v0, Ly1/m;->m:Ly1/m;

    invoke-interface {v4, v3, v0}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    if-eqz v5, :cond_67

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v0, :cond_67

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv1/c;

    sget-object v7, Ly1/m;->m:Ly1/m;

    invoke-interface {v6, v3, v7}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_67
    if-eqz v5, :cond_69

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_69

    :goto_40
    add-int/lit8 v2, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/c;

    sget-object v6, Ly1/m;->n:Ly1/m;

    invoke-interface {v0, v3, v6}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    if-gez v2, :cond_68

    goto :goto_41

    :cond_68
    move v0, v2

    goto :goto_40

    :cond_69
    :goto_41
    sget-object v0, Ly1/m;->n:Ly1/m;

    invoke-interface {v4, v3, v0}, Lv1/c;->E(Ld1/c0;Ly1/m;)V

    :cond_6a
    iget-object v0, v3, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v2, :cond_49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/b;

    iget-boolean v5, v5, Lv1/b;->i:Z

    if-eqz v5, :cond_6b

    const/4 v0, 0x1

    goto :goto_43

    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :goto_43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_6d

    const/4 v8, 0x1

    if-eq v4, v8, :cond_6c

    const/4 v3, 0x2

    if-eq v4, v3, :cond_6c

    goto :goto_44

    :cond_6c
    if-eqz v0, :cond_6e

    const/4 v9, 0x0

    iput v9, v1, Lf2/t1;->b:I

    iput-boolean v8, v1, Lf2/t1;->a:Z

    goto :goto_44

    :cond_6d
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v0, v3, Ld1/c0;->b:I

    iput v0, v1, Lf2/t1;->b:I

    iput-boolean v9, v1, Lf2/t1;->a:Z

    :cond_6e
    :goto_44
    iget-object v0, v1, Lf2/t1;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v8

    :cond_6f
    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_70

    invoke-static/range {v22 .. v22}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_70
    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_45
    if-eqz v0, :cond_7b

    iget-object v3, v0, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->f:Lf1/q;

    iget v3, v3, Lf1/q;->o:I

    const/high16 v23, 0x200000

    and-int v3, v3, v23

    if-eqz v3, :cond_79

    :goto_46
    if-eqz v2, :cond_79

    iget v3, v2, Lf1/q;->n:I

    and-int v3, v3, v23

    if-eqz v3, :cond_78

    move-object v3, v2

    const/4 v4, 0x0

    :goto_47
    if-eqz v3, :cond_78

    instance-of v5, v3, Lv1/c;

    if-eqz v5, :cond_71

    goto :goto_4b

    :cond_71
    iget v5, v3, Lf1/q;->n:I

    and-int v5, v5, v23

    if-eqz v5, :cond_77

    instance-of v5, v3, Le2/k;

    if-eqz v5, :cond_77

    move-object v5, v3

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_48
    if-eqz v5, :cond_76

    iget v7, v5, Lf1/q;->n:I

    and-int v7, v7, v23

    if-eqz v7, :cond_75

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_72

    move-object v3, v5

    goto :goto_49

    :cond_72
    if-nez v4, :cond_73

    new-instance v4, Lt0/b;

    const/16 v8, 0x10

    new-array v7, v8, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_73
    if-eqz v3, :cond_74

    invoke-virtual {v4, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_74
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_75
    :goto_49
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    const/high16 v23, 0x200000

    goto :goto_48

    :cond_76
    const/4 v8, 0x1

    if-ne v6, v8, :cond_77

    :goto_4a
    const/high16 v23, 0x200000

    goto :goto_47

    :cond_77
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_4a

    :cond_78
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    const/high16 v23, 0x200000

    goto :goto_46

    :cond_79
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    if-eqz v2, :cond_7a

    iget-object v2, v2, Le2/c1;->e:Le2/b2;

    goto :goto_45

    :cond_7a
    const/4 v2, 0x0

    goto :goto_45

    :cond_7b
    const/4 v3, 0x0

    :goto_4b
    check-cast v3, Lv1/c;

    goto :goto_4c

    :cond_7c
    const/4 v3, 0x0

    :goto_4c
    if-eqz v3, :cond_8b

    move-object v0, v3

    check-cast v0, Lf1/q;

    iget-object v2, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_7d

    invoke-static/range {v22 .. v22}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_7d
    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {v3}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4d
    if-eqz v2, :cond_8a

    iget-object v5, v2, Le2/g0;->R:Le2/c1;

    iget-object v5, v5, Le2/c1;->f:Lf1/q;

    iget v5, v5, Lf1/q;->o:I

    const/high16 v23, 0x200000

    and-int v5, v5, v23

    if-eqz v5, :cond_88

    :goto_4e
    if-eqz v0, :cond_88

    iget v5, v0, Lf1/q;->n:I

    and-int v5, v5, v23

    if-eqz v5, :cond_87

    move-object v5, v0

    const/4 v6, 0x0

    :goto_4f
    if-eqz v5, :cond_87

    instance-of v7, v5, Lv1/c;

    if-eqz v7, :cond_7f

    if-nez v4, :cond_7e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_7e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x10

    const/high16 v23, 0x200000

    goto :goto_53

    :cond_7f
    iget v7, v5, Lf1/q;->n:I

    const/high16 v23, 0x200000

    and-int v7, v7, v23

    if-eqz v7, :cond_85

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_85

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    const/4 v8, 0x0

    :goto_50
    if-eqz v7, :cond_84

    iget v10, v7, Lf1/q;->n:I

    and-int v10, v10, v23

    if-eqz v10, :cond_80

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_81

    move-object v5, v7

    :cond_80
    const/16 v11, 0x10

    goto :goto_52

    :cond_81
    if-nez v6, :cond_82

    new-instance v6, Lt0/b;

    const/16 v11, 0x10

    new-array v10, v11, [Lf1/q;

    invoke-direct {v6, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    goto :goto_51

    :cond_82
    const/16 v11, 0x10

    :goto_51
    if-eqz v5, :cond_83

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :cond_83
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_52
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_50

    :cond_84
    const/4 v7, 0x1

    const/16 v11, 0x10

    if-ne v8, v7, :cond_86

    goto :goto_4f

    :cond_85
    const/16 v11, 0x10

    :cond_86
    :goto_53
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_4f

    :cond_87
    const/16 v11, 0x10

    const/high16 v23, 0x200000

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_4e

    :cond_88
    const/16 v11, 0x10

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_89

    iget-object v0, v2, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_89

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto/16 :goto_4d

    :cond_89
    const/4 v0, 0x0

    goto/16 :goto_4d

    :cond_8a
    invoke-interface {v3}, Lv1/c;->W()V

    if-eqz v4, :cond_8b

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_54
    if-ge v2, v0, :cond_8b

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv1/c;

    invoke-interface {v3}, Lv1/c;->W()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    :cond_8b
    const/4 v9, 0x0

    iput v9, v1, Lf2/t1;->b:I

    const/4 v8, 0x1

    iput-boolean v8, v1, Lf2/t1;->a:Z

    return v8

    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MotionEvent must be a touch navigation source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_8e
    :goto_55
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lf2/y;->N0:Z

    iget-object v3, v0, Lf2/y;->M0:Lf2/k;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Lf2/k;->run()V

    :cond_0
    invoke-static {v1}, Lf2/y;->p(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, v0, Lf2/y;->J:Lf2/e0;

    iget-object v5, v2, Lf2/e0;->o:Lf2/y;

    iget-object v6, v2, Lf2/e0;->r:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x7

    const/4 v10, 0x1

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0x100

    const/16 v11, 0x80

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/high16 v14, -0x80000000

    if-eq v6, v9, :cond_5

    const/16 v15, 0x9

    if-eq v6, v15, :cond_5

    if-eq v6, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    iget v6, v2, Lf2/e0;->p:I

    if-eq v6, v14, :cond_4

    if-ne v6, v14, :cond_3

    goto/16 :goto_3

    :cond_3
    iput v14, v2, Lf2/e0;->p:I

    invoke-static {v2, v14, v11, v12, v13}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    invoke-static {v2, v6, v7, v12, v13}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v5}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-virtual {v5, v10}, Lf2/y;->u(Z)V

    new-instance v20, Le2/q;

    invoke-direct/range {v20 .. v20}, Le2/q;-><init>()V

    invoke-virtual {v5}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    move-wide/from16 v16, v8

    int-to-long v7, v6

    const/16 v6, 0x20

    shl-long v16, v16, v6

    const-wide v18, 0xffffffffL

    and-long v6, v7, v18

    or-long v6, v16, v6

    iget-object v8, v14, Le2/g0;->R:Le2/c1;

    iget-object v9, v8, Le2/c1;->d:Le2/h1;

    sget-object v14, Le2/h1;->X:Lm1/f0;

    invoke-virtual {v9, v6, v7}, Le2/h1;->R0(J)J

    move-result-wide v18

    iget-object v6, v8, Le2/c1;->d:Le2/h1;

    sget-object v17, Le2/h1;->b0:Le2/d1;

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v22}, Le2/h1;->Z0(Le2/d1;JLe2/q;IZ)V

    move-object/from16 v6, v20

    invoke-static {v6}, Lg5/f;->A(Ljava/util/List;)I

    move-result v7

    :goto_0
    const/4 v8, -0x1

    if-ge v8, v7, :cond_6

    iget-object v8, v6, Le2/q;->l:Lk/h0;

    invoke-virtual {v8, v7}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v8, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lf1/q;

    invoke-static {v8}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v8

    invoke-virtual {v5}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v9

    invoke-virtual {v9}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le3/k;

    if-eqz v9, :cond_7

    :cond_6
    const/high16 v14, -0x80000000

    goto :goto_2

    :cond_7
    iget-object v9, v8, Le2/g0;->R:Le2/c1;

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Le2/c1;->d(I)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    iget v9, v8, Le2/g0;->m:I

    invoke-virtual {v2, v9}, Lf2/e0;->t(I)I

    move-result v9

    invoke-static {v8, v4}, Lm2/s;->a(Le2/g0;Z)Lm2/p;

    move-result-object v8

    invoke-static {v8}, Lm2/s;->f(Lm2/p;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v8}, Lm2/p;->k()Lm2/m;

    move-result-object v8

    sget-object v14, Lm2/t;->A:Lm2/w;

    iget-object v8, v8, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v14}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_a
    move v14, v9

    :goto_2
    invoke-virtual {v5}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    iget v5, v2, Lf2/e0;->p:I

    if-ne v5, v14, :cond_b

    goto :goto_3

    :cond_b
    iput v14, v2, Lf2/e0;->p:I

    invoke-static {v2, v14, v11, v12, v13}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    const/16 v15, 0x100

    invoke-static {v2, v5, v15, v12, v13}, Lf2/e0;->x(Lf2/e0;IILjava/lang/Integer;I)V

    :cond_c
    :goto_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_10

    const/16 v5, 0xa

    if-eq v2, v5, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lf2/y;->q(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lf2/y;->F0:Landroid/view/MotionEvent;

    iput-boolean v10, v0, Lf2/y;->N0:Z

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v4

    :cond_10
    invoke-virtual/range {p0 .. p1}, Lf2/y;->r(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lf2/y;->m(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/2addr v0, v10

    if-eqz v0, :cond_12

    return v10

    :cond_12
    :goto_5
    return v4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    iget-object v1, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lf2/t2;->a:Lr0/e1;

    new-instance v2, Ly1/b0;

    invoke-direct {v2, v0}, Ly1/b0;-><init>(I)V

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    sget-object v1, Lk1/k;->l:Lk1/k;

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p1, v1}, Lk1/o;->d(Landroid/view/KeyEvent;Li9/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    new-instance v1, Ld5/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p1, v1}, Lk1/o;->d(Landroid/view/KeyEvent;Li9/a;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    iget-object v3, v0, Lk1/o;->d:Lk1/i;

    iget-boolean v3, v3, Lk1/i;->e:Z

    if-eqz v3, :cond_0

    const-string v0, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, v0, Lk1/o;->c:Lk1/b0;

    invoke-static {v0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v3, v3, Lf1/q;->y:Z

    if-nez v3, :cond_1

    const-string v3, "visitAncestors called on an unattached node"

    invoke-static {v3}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_b

    iget-object v4, v0, Le2/g0;->R:Le2/c1;

    iget-object v4, v4, Le2/c1;->f:Lf1/q;

    iget v4, v4, Lf1/q;->o:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    :goto_1
    if-eqz v3, :cond_9

    iget v4, v3, Lf1/q;->n:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    move-object v4, v3

    move-object v7, v6

    :goto_2
    if-eqz v4, :cond_8

    iget v8, v4, Lf1/q;->n:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_7

    instance-of v8, v4, Le2/k;

    if-eqz v8, :cond_7

    move-object v8, v4

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v1

    :goto_3
    if-eqz v8, :cond_6

    iget v10, v8, Lf1/q;->n:I

    and-int/2addr v10, v5

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v2, :cond_2

    move-object v4, v8

    goto :goto_4

    :cond_2
    if-nez v7, :cond_3

    new-instance v7, Lt0/b;

    const/16 v10, 0x10

    new-array v10, v10, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v7, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_4
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v9, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_2

    :cond_8
    iget-object v3, v3, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, v0, Le2/g0;->R:Le2/c1;

    if-eqz v3, :cond_a

    iget-object v3, v3, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_a
    move-object v3, v6

    goto :goto_0

    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lf2/y;->N0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf2/y;->M0:Lf2/k;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lf2/y;->F0:Landroid/view/MotionEvent;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lf2/y;->N0:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lf2/k;->run()V

    :cond_2
    :goto_1
    invoke-static {p1}, Lf2/y;->p(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lf2/y;->r(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0, p1}, Lf2/y;->m(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :goto_3
    const/16 v4, 0x2002

    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v4

    if-nez v4, :cond_9

    const v4, 0x100008

    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v4, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v4, v3

    :goto_5
    if-eqz v2, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_a

    check-cast v2, Landroid/view/View;

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_b

    const v4, 0x7f080030

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    new-instance v2, Lf2/d1;

    invoke-direct {v2, v3}, Lf2/d1;-><init>(I)V

    :cond_c
    new-instance v4, Lf2/d1;

    invoke-direct {v4, v3}, Lf2/d1;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v2

    check-cast v2, Lk1/o;

    invoke-virtual {v2}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v2}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object v2

    invoke-static {v2}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v6, p1

    const/16 p1, 0x20

    shl-long/2addr v4, p1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ll1/c;->a(J)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v1, v3}, Lk1/o;->b(IZZ)Z

    :cond_d
    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_e

    return v3

    :cond_e
    :goto_7
    return v1
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "findViewByAccessibilityIdTraversal"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    if-eqz p1, :cond_c

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    iget-boolean v0, v0, Le2/v0;->c:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lf2/k0;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-ne p1, p0, :cond_3

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v2

    check-cast v2, Lk1/o;

    iget-object v2, v2, Lk1/o;->c:Lk1/b0;

    invoke-static {v2}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_4

    invoke-static {p1, p0}, Lk1/h;->a(Landroid/view/View;Landroid/view/View;)Ll1/c;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {p1, p0}, Lk1/h;->a(Landroid/view/View;Landroid/view/View;)Ll1/c;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-static {p2}, Lk1/h;->d(I)Lk1/f;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, v2, Lk1/f;->a:I

    goto :goto_2

    :cond_5
    const/4 v2, 0x6

    :goto_2
    new-instance v3, Lj9/y;

    invoke-direct {v3}, Lj9/y;-><init>()V

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v4

    new-instance v5, Lf2/q;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lf2/q;-><init>(Lj9/y;I)V

    check-cast v4, Lk1/o;

    invoke-virtual {v4, v2, v1, v5}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_6

    return-object p1

    :cond_6
    iget-object v3, v3, Lj9/y;->m:Ljava/lang/Object;

    if-nez v3, :cond_7

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x1

    if-ne v2, p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x2

    if-ne v2, p1, :cond_a

    goto :goto_3

    :cond_a
    check-cast v3, Lk1/b0;

    invoke-static {v3}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p1

    invoke-static {v0, p0}, Lk1/h;->a(Landroid/view/View;Landroid/view/View;)Ll1/c;

    move-result-object p2

    invoke-static {p1, p2, v1, v2}, Lk1/d;->o(Ll1/c;Ll1/c;Ll1/c;I)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_3
    return-object p0

    :cond_b
    return-object v0

    :cond_c
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAccessibilityManager()Lf2/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getAccessibilityManager()Lf2/h;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityManager()Lf2/h;
    .locals 0

    .line 2
    iget-object p0, p0, Lf2/y;->L:Lf2/h;

    return-object p0
.end method

.method public final getAndroidViewsHandler$ui()Lf2/a1;
    .locals 2

    iget-object v0, p0, Lf2/y;->f0:Lf2/a1;

    if-nez v0, :cond_0

    new-instance v0, Lf2/a1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf2/a1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf2/y;->f0:Lf2/a1;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lf2/y;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object p0, p0, Lf2/y;->f0:Lf2/a1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getAutofill()Lg1/g;
    .locals 0

    iget-object p0, p0, Lf2/y;->V:Lg5/i;

    return-object p0
.end method

.method public getAutofillManager()Lg1/i;
    .locals 0

    iget-object p0, p0, Lf2/y;->W:Lg1/c;

    return-object p0
.end method

.method public getAutofillTree()Lg1/j;
    .locals 0

    iget-object p0, p0, Lf2/y;->N:Lg1/j;

    return-object p0
.end method

.method public bridge synthetic getClipboard()Lf2/g1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getClipboard()Lf2/i;

    move-result-object p0

    return-object p0
.end method

.method public getClipboard()Lf2/i;
    .locals 0

    .line 2
    iget-object p0, p0, Lf2/y;->c0:Lf2/i;

    return-object p0
.end method

.method public bridge synthetic getClipboardManager()Lf2/h1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getClipboardManager()Lf2/j;

    move-result-object p0

    return-object p0
.end method

.method public getClipboardManager()Lf2/j;
    .locals 0

    .line 2
    iget-object p0, p0, Lf2/y;->b0:Lf2/j;

    return-object p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lf2/y;->U:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;

    return-object p0
.end method

.method public final getContentCaptureManager$ui()Lh1/d;
    .locals 0

    iget-object p0, p0, Lf2/y;->K:Lh1/d;

    return-object p0
.end method

.method public getCoroutineContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Lf2/y;->y:Ly8/h;

    return-object p0
.end method

.method public getDensity()Lb3/c;
    .locals 0

    iget-object p0, p0, Lf2/y;->u:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/c;

    return-object p0
.end method

.method public getDragAndDropManager()Li1/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lf2/y;->z:Li1/b;

    return-object p0
.end method

.method public bridge synthetic getDragAndDropManager()Li1/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getDragAndDropManager()Li1/b;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddedViewFocusRect()Ll1/c;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    iget-object p0, p0, Lk1/o;->c:Lk1/b0;

    invoke-static {p0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lk1/h;->a(Landroid/view/View;Landroid/view/View;)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getFocusOwner()Lk1/l;
    .locals 0

    iget-object p0, p0, Lf2/y;->x:Lk1/o;

    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lf2/y;->getEmbeddedViewFocusRect()Ll1/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, v0, Ll1/c;->a:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, v0, Ll1/c;->b:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, v0, Ll1/c;->c:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, v0, Ll1/c;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    sget-object v1, Lf2/r;->m:Lf2/r;

    check-cast v0, Lk1/o;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 p0, -0x80000000

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFontFamilyResolver()Lt2/d;
    .locals 0

    iget-object p0, p0, Lf2/y;->z0:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/d;

    return-object p0
.end method

.method public getFontLoader()Lt2/c;
    .locals 0

    iget-object p0, p0, Lf2/y;->y0:Lf2/u1;

    return-object p0
.end method

.method public final getFrameEndScheduler$ui()Lf2/y1;
    .locals 0

    iget-object p0, p0, Lf2/y;->p:Lf2/y1;

    return-object p0
.end method

.method public getGraphicsContext()Lm1/t;
    .locals 0

    iget-object p0, p0, Lf2/y;->M:Lm1/d;

    return-object p0
.end method

.method public getHapticFeedBack()Lt1/a;
    .locals 0

    iget-object p0, p0, Lf2/y;->B0:Lf2/m1;

    return-object p0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 1

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    iget-object v0, v0, Le2/v0;->b:Lg5/m;

    invoke-virtual {v0}, Lg5/m;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lf2/y;->s:Lu8/k;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getImportantForAutofill()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getInputModeManager()Lu1/b;
    .locals 0

    iget-object p0, p0, Lf2/y;->C0:Lu1/c;

    return-object p0
.end method

.method public final getInsetsListener()Lc2/o;
    .locals 0

    iget-object p0, p0, Lf2/y;->D:Lc2/o;

    return-object p0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui()J
    .locals 2

    iget-wide v0, p0, Lf2/y;->o0:J

    return-wide v0
.end method

.method public getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lf2/y;->A0:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/m;

    return-object p0
.end method

.method public bridge synthetic getLayoutNodes()Lk/k;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutNodes()Lk/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/x;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lf2/y;->F:Lk/x;

    return-object p0
.end method

.method public getMeasureIteration()J
    .locals 2

    iget-object p0, p0, Lf2/y;->i0:Le2/v0;

    iget-boolean v0, p0, Le2/v0;->c:Z

    if-nez v0, :cond_0

    const-string v0, "measureIteration should be only used during the measure/layout pass"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Le2/v0;->g:J

    return-wide v0
.end method

.method public getModifierLocalManager()Ld2/b;
    .locals 0

    iget-object p0, p0, Lf2/y;->D0:Ld2/b;

    return-object p0
.end method

.method public bridge synthetic getOutOfFrameExecutor()Le2/o1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/y;->getOutOfFrameExecutor()Lf2/y;

    move-result-object p0

    return-object p0
.end method

.method public getOutOfFrameExecutor()Lf2/y;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlacementScope()Lc2/e1;
    .locals 2

    sget v0, Lc2/h1;->b:I

    new-instance v0, Lc2/o0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lc2/o0;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getPointerIconService()Ly1/s;
    .locals 0

    iget-object p0, p0, Lf2/y;->U0:Lf2/t;

    return-object p0
.end method

.method public final getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui()Lv1/a;
    .locals 0

    iget-object p0, p0, Lf2/y;->n:Lv1/a;

    return-object p0
.end method

.method public getRectManager()Ln2/b;
    .locals 0

    iget-object p0, p0, Lf2/y;->G:Ln2/b;

    return-object p0
.end method

.method public getRetainedValuesStore()La1/e;
    .locals 0

    iget-object p0, p0, Lf2/y;->r:La1/e;

    return-object p0
.end method

.method public getRoot()Le2/g0;
    .locals 0

    iget-object p0, p0, Lf2/y;->E:Le2/g0;

    return-object p0
.end method

.method public getRootForTest()Le2/x1;
    .locals 0

    iget-object p0, p0, Lf2/y;->H:Lf2/y;

    return-object p0
.end method

.method public final getScrollCaptureInProgress$ui()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lf2/y;->S0:Lb0/l1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSemanticsOwner()Lm2/r;
    .locals 0

    iget-object p0, p0, Lf2/y;->I:Lm2/r;

    return-object p0
.end method

.method public getSharedDrawScope()Le2/j0;
    .locals 0

    iget-object p0, p0, Lf2/y;->o:Le2/j0;

    return-object p0
.end method

.method public getShowLayoutBounds()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lf2/b1;->a:Lf2/b1;

    invoke-virtual {v0, p0}, Lf2/b1;->a(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lf2/y;->e0:Z

    return p0
.end method

.method public getSnapshotObserver()Le2/s1;
    .locals 0

    iget-object p0, p0, Lf2/y;->d0:Le2/s1;

    return-object p0
.end method

.method public getSoftwareKeyboardController()Lf2/k2;
    .locals 0

    iget-object p0, p0, Lf2/y;->x0:Lf2/n1;

    return-object p0
.end method

.method public getTextInputService()Lu2/y;
    .locals 0

    iget-object p0, p0, Lf2/y;->v0:Lu2/y;

    return-object p0
.end method

.method public getTextToolbar()Lf2/l2;
    .locals 0

    iget-object p0, p0, Lf2/y;->E0:Lf2/r0;

    return-object p0
.end method

.method public final getUncaughtExceptionHandler$ui()Le2/w1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewConfiguration()Lf2/p2;
    .locals 0

    iget-object p0, p0, Lf2/y;->C:Lf2/z0;

    return-object p0
.end method

.method public final getViewTreeOwners()Lf2/n;
    .locals 0

    iget-object p0, p0, Lf2/y;->s0:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/n;

    return-object p0
.end method

.method public getWindowInfo()Lf2/s2;
    .locals 0

    iget-object p0, p0, Lf2/y;->A:Lf2/x1;

    return-object p0
.end method

.method public final get_autofillManager$ui()Lg1/c;
    .locals 0

    iget-object p0, p0, Lf2/y;->W:Lg1/c;

    return-object p0
.end method

.method public final l(Le2/g0;Z)V
    .locals 0

    iget-object p0, p0, Lf2/y;->i0:Le2/v0;

    invoke-virtual {p0, p1, p2}, Le2/v0;->f(Le2/g0;Z)V

    return-void
.end method

.method public final m(Landroid/view/MotionEvent;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lf2/y;->L0:Ldd/j0;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lf2/y;->E(Landroid/view/MotionEvent;)V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lf2/y;->p0:Z

    invoke-virtual {v1, v7}, Lf2/y;->u(Z)V

    const-string v2, "AndroidOwner:onTouch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    iget-object v2, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    const/4 v10, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v10, :cond_0

    move v11, v8

    goto :goto_0

    :cond_0
    move v11, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :goto_0
    const/16 v12, 0xa

    iget-object v13, v1, Lf2/y;->T:Lf8/p2;

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v8

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v14, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v12, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/16 v3, 0xa

    invoke-virtual/range {v1 .. v6}, Lf2/y;->J(Landroid/view/MotionEvent;IJZ)V

    move-object v14, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_d

    :cond_5
    move-object v14, v2

    goto :goto_4

    :goto_3
    iget-boolean v1, v13, Lf8/p2;->a:Z

    if-nez v1, :cond_6

    iget-object v1, v13, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v1, Lq3/k;

    iget-object v1, v1, Lq3/k;->m:Ljava/lang/Object;

    check-cast v1, Lk/q;

    invoke-virtual {v1}, Lk/q;->a()V

    iget-object v1, v13, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v1, Ly1/d;

    invoke-virtual {v1}, Ly1/d;->c()V

    :cond_6
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v10, :cond_7

    move v1, v8

    goto :goto_5

    :cond_7
    move v1, v7

    :goto_5
    const/16 v15, 0x9

    if-nez v11, :cond_8

    if-eqz v1, :cond_8

    if-eq v9, v10, :cond_8

    if-eq v9, v15, :cond_8

    invoke-virtual/range {p0 .. p1}, Lf2/y;->q(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    const/16 v3, 0x9

    move-object/from16 v1, p0

    move-object v2, v0

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lf2/y;->J(Landroid/view/MotionEvent;IJZ)V

    goto :goto_6

    :cond_8
    move-object/from16 v1, p0

    :goto_6
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iget-object v0, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v12, :cond_14

    iget-object v0, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, v1, Lf2/y;->S:Ly1/i;

    if-ne v2, v15, :cond_b

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_b

    if-ltz v0, :cond_14

    iget-object v2, v3, Ly1/i;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v2, v3, Ly1/i;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    goto/16 :goto_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    goto :goto_8

    :cond_c
    move v2, v4

    :goto_8
    iget-object v5, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpg-float v2, v2, v5

    if-nez v2, :cond_e

    cmpg-float v2, v4, v6

    if-nez v2, :cond_e

    move v2, v7

    goto :goto_9

    :cond_e
    move v2, v8

    :goto_9
    iget-object v4, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    goto :goto_a

    :cond_f
    const-wide/16 v4, -0x1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-eqz v4, :cond_10

    move v4, v8

    goto :goto_b

    :cond_10
    move v4, v7

    :goto_b
    if-nez v2, :cond_11

    if-eqz v4, :cond_14

    :cond_11
    if-ltz v0, :cond_12

    iget-object v2, v3, Ly1/i;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v2, v3, Ly1/i;->b:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_12
    iget-object v0, v13, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ly1/d;

    iget-boolean v2, v0, Ly1/d;->d:Z

    if-eqz v2, :cond_13

    iput-boolean v8, v0, Ly1/d;->d:Z

    goto :goto_c

    :cond_13
    iget-object v0, v0, Ly1/d;->g:Ly1/k;

    iget-object v0, v0, Ly1/k;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->g()V

    :cond_14
    :goto_c
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Lf2/y;->F0:Landroid/view/MotionEvent;

    invoke-virtual/range {p0 .. p1}, Lf2/y;->I(Landroid/view/MotionEvent;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput-boolean v7, v1, Lf2/y;->p0:Z

    return v0

    :catchall_2
    move-exception v0

    goto :goto_e

    :goto_d
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_e
    iput-boolean v7, v1, Lf2/y;->p0:Z

    throw v0
.end method

.method public final o(Le2/g0;)V
    .locals 3

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Le2/v0;->p(Le2/g0;Z)Z

    invoke-virtual {p1}, Le2/g0;->z()Lt0/b;

    move-result-object p1

    iget-object v0, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    invoke-virtual {p0, v2}, Lf2/y;->o(Le2/g0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 11

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Lf2/k0;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, Lf2/y;->setShowLayoutBounds(Z)V

    :cond_0
    iget-object v0, p0, Lf2/y;->D:Lc2/o;

    invoke-virtual {v0, p0}, Lc2/o;->onViewAttachedToWindow(Landroid/view/View;)V

    sget-object v0, Lf2/y;->Z0:Lf2/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    new-instance v0, Lf2/l;

    invoke-direct {v0, v1}, Lf2/l;-><init>(I)V

    sput-object v0, Lf2/y;->Z0:Lf2/l;

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    :try_start_0
    sget-object v4, Lf2/y;->V0:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lf2/y;->V0:Ljava/lang/Class;

    :cond_1
    sget-object v4, Lf2/y;->X0:Ljava/lang/reflect/Method;

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    sget-object v4, Lf2/y;->V0:Ljava/lang/Class;

    if-eqz v4, :cond_2

    const-string v5, "addChangeCallback"

    const-class v6, Ljava/lang/Runnable;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    sput-object v4, Lf2/y;->X0:Ljava/lang/reflect/Method;

    :cond_3
    sget-object v4, Lf2/y;->X0:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_5
    sget-object v0, Lf2/y;->Y0:Lk/h0;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p0}, Lk/h0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    iget-object v0, v0, Lf2/x1;->a:Lr0/e1;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf2/y;->o(Le2/g0;)V

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v0

    invoke-static {v0}, Lf2/y;->n(Le2/g0;)V

    invoke-virtual {p0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v0

    iget-object v0, v0, Le2/s1;->a:Ld1/b0;

    invoke-virtual {v0}, Ld1/b0;->d()V

    iget-object v0, p0, Lf2/y;->V:Lg5/i;

    if-eqz v0, :cond_6

    sget-object v3, Lg1/h;->a:Lg1/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v3}, Landroid/view/autofill/AutofillManager;->registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    :cond_6
    invoke-static {p0}, Landroidx/lifecycle/t0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    move-result-object v0

    invoke-static {p0}, Ll9/a;->n(Landroid/view/View;)Ln4/g;

    move-result-object v3

    invoke-static {p0}, Landroidx/lifecycle/t0;->f(Landroid/view/View;)Landroidx/lifecycle/g1;

    move-result-object v4

    iget-object v5, p0, Lf2/y;->p:Lf2/y1;

    const/4 v6, 0x1

    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    if-nez v5, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-interface {v4}, Landroidx/lifecycle/g1;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object v5

    new-instance v7, Landroidx/lifecycle/d1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sget-object v8, Ld4/a;->b:Ld4/a;

    const-string v9, "store"

    invoke-static {v5, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "extras"

    invoke-static {v8, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lg5/i;

    invoke-direct {v9, v5, v7, v8}, Lg5/i;-><init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V

    const-class v5, Lf2/a2;

    invoke-static {v5}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v5

    invoke-virtual {v5}, Lj9/f;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    const-string v8, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Lg5/i;->u(Lj9/f;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object v5

    check-cast v5, Lf2/a2;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.view.View"

    invoke-static {v7, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v5, v5, Lf2/a2;->b:Lk/x;

    invoke-virtual {v5, v7}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8

    new-instance v8, Lk/h0;

    invoke-direct {v8, v6}, Lk/h0;-><init>(I)V

    invoke-virtual {v5, v7, v8}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_8
    check-cast v8, Lk/h0;

    iget-object v5, v8, Lk/h0;->a:[Ljava/lang/Object;

    iget v7, v8, Lk/h0;->b:I

    :goto_1
    if-ge v1, v7, :cond_a

    aget-object v9, v5, v1

    move-object v10, v9

    check-cast v10, Lf2/z1;

    iget-boolean v10, v10, Lf2/z1;->c:Z

    if-nez v10, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    move-object v9, v2

    :goto_2
    check-cast v9, Lf2/z1;

    if-nez v9, :cond_b

    new-instance v9, Lf2/z1;

    invoke-direct {v9}, Lf2/z1;-><init>()V

    invoke-virtual {v8, v9}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_b
    iput-boolean v6, v9, Lf2/z1;->c:Z

    iput-object v9, p0, Lf2/y;->q:Lf2/z1;

    iget-object v1, v9, Lf2/z1;->b:Lb0/l1;

    goto :goto_4

    :cond_c
    const-string p0, "Local and anonymous classes can not be ViewModels"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_3
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_e

    sget-object v1, La1/a;->l:La1/a;

    :cond_e
    iput-object v1, p0, Lf2/y;->r:La1/e;

    invoke-virtual {p0}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_12

    if-eqz v3, :cond_12

    iget-object v5, v1, Lf2/n;->a:Landroidx/lifecycle/v;

    if-ne v0, v5, :cond_f

    iget-object v5, v1, Lf2/n;->b:Ln4/g;

    if-ne v3, v5, :cond_f

    iget-object v5, v1, Lf2/n;->c:Landroidx/lifecycle/g1;

    if-eq v4, v5, :cond_12

    :cond_f
    if-eqz v0, :cond_19

    if-eqz v3, :cond_18

    if-eqz v1, :cond_10

    iget-object v1, v1, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-interface {v1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :cond_10
    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    new-instance v1, Lf2/n;

    invoke-direct {v1, v0, v3, v4}, Lf2/n;-><init>(Landroidx/lifecycle/v;Ln4/g;Landroidx/lifecycle/g1;)V

    invoke-direct {p0, v1}, Lf2/y;->set_viewTreeOwners(Lf2/n;)V

    iget-object v0, p0, Lf2/y;->t0:Li9/c;

    if-eqz v0, :cond_11

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iput-object v2, p0, Lf2/y;->t0:Li9/c;

    :cond_12
    iget-object v0, p0, Lf2/y;->C0:Lu1/c;

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5

    :cond_13
    const/4 v6, 0x2

    :goto_5
    iget-object v0, v0, Lu1/c;->a:Lr0/e1;

    new-instance v1, Lu1/a;

    invoke-direct {v1, v6}, Lu1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v2

    :cond_14
    if-eqz v2, :cond_17

    invoke-virtual {v2, p0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    iget-object v0, p0, Lf2/y;->K:Lh1/d;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_15

    sget-object v0, Lf2/h0;->a:Lf2/h0;

    invoke-virtual {v0, p0}, Lf2/h0;->b(Landroid/view/View;)V

    :cond_15
    iget-object v0, p0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    check-cast v1, Lk1/o;

    iget-object v1, v1, Lk1/o;->g:Lk/h0;

    invoke-virtual {v1, v0}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v1

    iget-object v1, v1, Lm2/r;->d:Lk/h0;

    invoke-virtual {v1, v0}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    iget-object v0, v0, Lk1/o;->g:Lk/h0;

    invoke-virtual {v0, p0}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void

    :cond_17
    const-string p0, "No lifecycle owner exists"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Composed into the View which doesn\'t propagateViewTreeSavedStateRegistryOwner!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Composed into the View which doesn\'t propagate ViewTreeLifecycleOwner!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onCheckIsTextEditor()Z
    .locals 2

    iget-object v0, p0, Lf2/y;->w0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf1/u;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lf2/q0;

    if-nez v0, :cond_1

    iget-object p0, p0, Lf2/y;->u0:Le6/g;

    iget-boolean p0, p0, Le6/g;->a:Z

    return p0

    :cond_1
    iget-object p0, v0, Lf2/q0;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/u;

    if-eqz p0, :cond_2

    iget-object v1, p0, Lf1/u;->b:Ljava/lang/Object;

    :cond_2
    check-cast v1, Lf2/v1;

    if-eqz v1, :cond_3

    iget-boolean p0, v1, Lf2/v1;->e:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lf2/y;->L(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 14

    iget-object v0, p0, Lf2/y;->w0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf1/u;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Lf2/q0;

    if-nez v0, :cond_1a

    iget-object p0, p0, Lf2/y;->u0:Le6/g;

    iget-boolean v0, p0, Le6/g;->a:Z

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Le6/g;->i:Ljava/lang/Object;

    check-cast v0, Lu2/k;

    iget-object v1, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast v1, Lu2/x;

    iget v2, v0, Lu2/k;->e:I

    iget-boolean v3, v0, Lu2/k;->a:Z

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ne v2, v4, :cond_3

    if-eqz v3, :cond_2

    :goto_1
    move v11, v8

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    move v11, v4

    goto :goto_2

    :cond_4
    if-ne v2, v10, :cond_5

    move v11, v10

    goto :goto_2

    :cond_5
    if-ne v2, v8, :cond_6

    move v11, v7

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_7

    move v11, v6

    goto :goto_2

    :cond_7
    if-ne v2, v9, :cond_8

    move v11, v9

    goto :goto_2

    :cond_8
    if-ne v2, v5, :cond_9

    move v11, v5

    goto :goto_2

    :cond_9
    if-ne v2, v6, :cond_19

    goto :goto_1

    :goto_2
    iput v11, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v12, v0, Lu2/k;->d:I

    const/16 v13, 0x9

    if-ne v12, v4, :cond_a

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_a
    if-ne v12, v10, :cond_b

    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v5, -0x80000000

    or-int/2addr v5, v11

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_3

    :cond_b
    if-ne v12, v9, :cond_c

    iput v10, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_c
    if-ne v12, v5, :cond_d

    iput v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_d
    if-ne v12, v7, :cond_e

    const/16 v5, 0x11

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_e
    if-ne v12, v8, :cond_f

    const/16 v5, 0x21

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_f
    if-ne v12, v6, :cond_10

    const/16 v5, 0x81

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_10
    const/16 v5, 0x8

    if-ne v12, v5, :cond_11

    const/16 v5, 0x12

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_3

    :cond_11
    if-ne v12, v13, :cond_18

    const/16 v5, 0x2002

    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_3
    if-nez v3, :cond_12

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v4, :cond_12

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v4, :cond_12

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_12
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_16

    iget v3, v0, Lu2/k;->b:I

    if-ne v3, v4, :cond_13

    or-int/lit16 v2, v2, 0x1000

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_4

    :cond_13
    if-ne v3, v10, :cond_14

    or-int/lit16 v2, v2, 0x2000

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_4

    :cond_14
    if-ne v3, v9, :cond_15

    or-int/lit16 v2, v2, 0x4000

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_15
    :goto_4
    iget-boolean v0, v0, Lu2/k;->c:Z

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_16
    iget-wide v2, v1, Lu2/x;->b:J

    sget v0, Lp2/l0;->c:I

    const/16 v0, 0x20

    shr-long v4, v2, v0

    long-to-int v0, v4

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iget-object v0, v1, Lu2/x;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lpc/h;->t(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {}, Lx3/h;->d()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    invoke-static {}, Lx3/h;->a()Lx3/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx3/h;->g(Landroid/view/inputmethod/EditorInfo;)V

    :goto_5
    iget-object p1, p0, Le6/g;->h:Ljava/lang/Object;

    check-cast p1, Lu2/x;

    iget-object v0, p0, Le6/g;->i:Ljava/lang/Object;

    check-cast v0, Lu2/k;

    iget-boolean v0, v0, Lu2/k;->c:Z

    new-instance v1, Lq3/k;

    invoke-direct {v1, v13, p0}, Lq3/k;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lu2/t;

    invoke-direct {v2, p1, v1, v0}, Lu2/t;-><init>(Lu2/x;Lq3/k;Z)V

    iget-object p0, p0, Le6/g;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Keyboard Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid ImeAction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    iget-object p0, v0, Lf2/q0;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/u;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lf1/u;->b:Ljava/lang/Object;

    goto :goto_6

    :cond_1b
    move-object p0, v1

    :goto_6
    check-cast p0, Lf2/v1;

    if-eqz p0, :cond_1e

    iget-object v0, p0, Lf2/v1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lf2/v1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1c

    monitor-exit v0

    return-object v1

    :cond_1c
    :try_start_1
    iget-object v1, p0, Lf2/v1;->a:Lk0/s;

    invoke-virtual {v1, p1}, Lk0/s;->a(Landroid/view/inputmethod/EditorInfo;)Lk0/t;

    move-result-object p1

    new-instance v1, Landroidx/fragment/app/t;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_1d

    new-instance v2, Lu2/o;

    invoke-direct {v2, p1, v1}, Lu2/n;-><init>(Lk0/t;Landroidx/fragment/app/t;)V

    goto :goto_7

    :cond_1d
    new-instance v2, Lu2/n;

    invoke-direct {v2, p1, v1}, Lu2/n;-><init>(Lk0/t;Landroidx/fragment/app/t;)V

    :goto_7
    iget-object p0, p0, Lf2/v1;->d:Lt0/b;

    new-instance p1, Le2/g2;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1e
    :goto_8
    return-object v1
.end method

.method public final onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .locals 6

    iget-object p0, p0, Lf2/y;->K:Lh1/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-wide v1, p1, v0

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object v3

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/q;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lm2/q;->a:Lm2/p;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lb5/c;->q()V

    iget-object v2, p0, Lh1/d;->l:Lf2/y;

    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    iget v3, v1, Lm2/p;->g:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lb5/c;->l(Landroid/view/autofill/AutofillId;J)Landroid/view/translation/ViewTranslationRequest$Builder;

    move-result-object v2

    iget-object v1, v1, Lm2/p;->d:Lm2/m;

    sget-object v3, Lm2/t;->B:Lm2/w;

    iget-object v1, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v1, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const-string v4, "\n"

    const/16 v5, 0x3e

    invoke-static {v1, v4, v3, v5}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lp2/g;

    invoke-direct {v3, v1}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lb5/c;->j(Lp2/g;)Landroid/view/translation/TranslationRequestValue;

    move-result-object v1

    invoke-static {v2, v1}, Lb5/c;->w(Landroid/view/translation/ViewTranslationRequest$Builder;Landroid/view/translation/TranslationRequestValue;)V

    invoke-static {v2}, Lb5/c;->m(Landroid/view/translation/ViewTranslationRequest$Builder;)Landroid/view/translation/ViewTranslationRequest;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lf2/y;->D:Lc2/o;

    invoke-virtual {v0, p0}, Lc2/o;->onViewDetachedFromWindow(Landroid/view/View;)V

    iget-boolean v0, p0, Lf2/y;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf2/y;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "frameRateCategoryView"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lf2/y;->Y0:Lk/h0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Lk/h0;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v0

    iget-object v0, v0, Le2/s1;->a:Ld1/b0;

    iget-object v2, v0, Ld1/b0;->h:Lb/e0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lb/e0;->c()V

    :cond_2
    invoke-virtual {v0}, Ld1/b0;->a()V

    iget-object v0, p0, Lf2/y;->A:Lf2/x1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_9

    iget-object v2, p0, Lf2/y;->K:Lh1/d;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    invoke-virtual {v0, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    iget-object v0, p0, Lf2/y;->V:Lg5/i;

    if-eqz v0, :cond_4

    sget-object v2, Lg1/h;->a:Lg1/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg5/i;->o:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v2}, Landroid/view/autofill/AutofillManager;->unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v0, p0, Lf2/y;->q:Lf2/z1;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, v0, Lf2/z1;->c:Z

    :cond_5
    iput-object v1, p0, Lf2/y;->q:Lf2/z1;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_6

    sget-object v0, Lf2/h0;->a:Lf2/h0;

    invoke-virtual {v0, p0}, Lf2/h0;->a(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v2

    iget-object v2, v2, Lm2/r;->d:Lk/h0;

    invoke-virtual {v2, v0}, Lk/h0;->j(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v2

    check-cast v2, Lk1/o;

    iget-object v2, v2, Lk1/o;->g:Lk/h0;

    invoke-virtual {v2, v0}, Lk/h0;->j(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    iget-object v2, v0, Ln2/b;->g:Le3/a;

    if-eqz v2, :cond_8

    sget-object v3, Lf1/b;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, v0, Ln2/b;->g:Le3/a;

    :cond_8
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    iget-object v0, v0, Lk1/o;->g:Lk/h0;

    invoke-virtual {v0, p0}, Lk/h0;->j(Ljava/lang/Object;)Z

    return-void

    :cond_9
    const-string p0, "No lifecycle owner exists"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    iget-object p1, p0, Lk1/o;->c:Lk1/b0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lk1/d;->d(Lk1/b0;Z)Z

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lk1/o;->i(Lk1/b0;)V

    if-eqz p1, :cond_0

    sget-object p0, Lk1/z;->l:Lk1/z;

    sget-object p2, Lk1/z;->n:Lk1/z;

    invoke-virtual {p1, p0, p2}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf2/y;->o0:J

    invoke-virtual {p0}, Lf2/y;->M()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-gt v1, v0, :cond_0

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf2/y;->L(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf2/y;->o0:J

    iget-object p1, p0, Lf2/y;->i0:Le2/v0;

    iget-object v0, p0, Lf2/y;->P0:Lf2/v;

    invoke-virtual {p1, v0}, Le2/v0;->j(Lf2/v;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lf2/y;->g0:Lb3/a;

    invoke-virtual {p0}, Lf2/y;->M()V

    iget-object p1, p0, Lf2/y;->f0:Lf2/a1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    const-string v1, "AndroidOwner:onMeasure"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf2/y;->o(Le2/g0;)V

    :cond_0
    invoke-static {p1}, Lf2/y;->k(I)J

    move-result-wide v1

    const/16 p1, 0x20

    ushr-long v3, v1, p1

    long-to-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {p2}, Lf2/y;->k(I)J

    move-result-wide v6

    ushr-long p1, v6, p1

    long-to-int p1, p1

    and-long/2addr v4, v6

    long-to-int p2, v4

    invoke-static {v3, v1, p1, p2}, Ll9/a;->l(IIII)J

    move-result-wide p1

    iget-object v1, p0, Lf2/y;->g0:Lb3/a;

    if-nez v1, :cond_1

    new-instance v1, Lb3/a;

    invoke-direct {v1, p1, p2}, Lb3/a;-><init>(J)V

    iput-object v1, p0, Lf2/y;->g0:Lb3/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf2/y;->h0:Z

    goto :goto_0

    :cond_1
    iget-wide v1, v1, Lb3/a;->a:J

    invoke-static {v1, v2, p1, p2}, Lb3/a;->b(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf2/y;->h0:Z

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Le2/v0;->q(J)V

    invoke-virtual {v0}, Le2/v0;->l()V

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p1

    iget-object p1, p1, Le2/g0;->S:Le2/l0;

    iget-object p1, p1, Le2/l0;->p:Le2/x0;

    iget p1, p1, Lc2/f1;->l:I

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p2

    iget-object p2, p2, Le2/g0;->S:Le2/l0;

    iget-object p2, p2, Le2/l0;->p:Le2/x0;

    iget p2, p2, Lc2/f1;->m:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lf2/y;->f0:Lf2/a1;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lf2/y;->getAndroidViewsHandler$ui()Lf2/a1;

    move-result-object p1

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p2

    iget-object p2, p2, Le2/g0;->S:Le2/l0;

    iget-object p2, p2, Le2/l0;->p:Le2/x0;

    iget p2, p2, Lc2/f1;->l:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget p0, p0, Lc2/f1;->m:I

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 11

    if-eqz p1, :cond_9

    const/4 p2, 0x1

    iget-object v0, p0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lg1/c;->m:Lm2/r;

    iget-object v1, v1, Lm2/r;->a:Le2/g0;

    iget-object v2, v0, Lg1/c;->r:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Lg1/c;->p:Ljava/lang/String;

    iget-object v0, v0, Lg1/c;->o:Ln2/b;

    invoke-static {p1, v1, v2, v3, v0}, Lg5/f;->K(Landroid/view/ViewStructure;Le2/g0;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ln2/b;)V

    sget-object v4, Lk/r0;->a:[Ljava/lang/Object;

    new-instance v4, Lk/h0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lk/h0;-><init>(I)V

    invoke-virtual {v4, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v4}, Lk/h0;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v4, Lk/h0;->b:I

    sub-int/2addr v1, p2

    invoke-virtual {v4, v1}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type android.view.ViewStructure"

    invoke-static {v1, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewStructure;

    iget v5, v4, Lk/h0;->b:I

    sub-int/2addr v5, p2

    invoke-virtual {v4, v5}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsInfo"

    invoke-static {v5, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le2/g0;

    invoke-virtual {v5}, Le2/g0;->n()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lk/f0;

    iget-object v6, v5, Lk/f0;->m:Ljava/lang/Object;

    check-cast v6, Lt0/b;

    iget v6, v6, Lt0/b;->n:I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le2/g0;

    iget-boolean v9, v8, Le2/g0;->c0:Z

    if-nez v9, :cond_4

    invoke-virtual {v8}, Le2/g0;->H()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Le2/g0;->I()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Le2/g0;->x()Lm2/m;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Lm2/m;->l:Lk/m0;

    sget-object v10, Lm2/l;->g:Lm2/w;

    invoke-virtual {v9, v10}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lm2/l;->h:Lm2/w;

    invoke-virtual {v9, v10}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lm2/t;->q:Lm2/w;

    invoke-virtual {v9, v10}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lm2/t;->r:Lm2/w;

    invoke-virtual {v9, v10}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v9

    invoke-static {v9, v8, v2, v3, v0}, Lg5/f;->K(Landroid/view/ViewStructure;Le2/g0;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ln2/b;)V

    invoke-virtual {v4, v8}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Lk/h0;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lf2/y;->V:Lg5/i;

    if-eqz p0, :cond_9

    iget-object v0, p0, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lg1/j;

    iget-object v1, v0, Lg1/j;->a:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lg1/j;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->addChildCount(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object p1

    iget-object v0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v2, p0, v0, v0}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setAutofillType(I)V

    throw v0

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_9
    :goto_2
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x4002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lf2/y;->getPointerIconService()Ly1/s;

    move-result-object v0

    check-cast v0, Lf2/t;

    iget-object v0, v0, Lf2/t;->a:Ly1/r;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, v0, Ly1/a;

    if-eqz p1, :cond_1

    check-cast v0, Ly1/a;

    iget p1, v0, Ly1/a;->b:I

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lf2/y;->m:Z

    if-eqz v0, :cond_3

    sget-object v0, Lk1/h;->a:[I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lb3/m;->m:Lb3/m;

    goto :goto_0

    :cond_1
    sget-object p1, Lb3/m;->l:Lb3/m;

    :goto_0
    if-nez p1, :cond_2

    sget-object p1, Lb3/m;->l:Lb3/m;

    :cond_2
    invoke-direct {p0, p1}, Lf2/y;->setLayoutDirection(Lb3/m;)V

    :cond_3
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 12

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_2

    iget-object v4, p0, Lf2/y;->S0:Lb0/l1;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object p1

    invoke-virtual {p0}, Lf2/y;->getCoroutineContext()Ly8/h;

    move-result-object p2

    new-instance v9, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Ll2/h;

    invoke-direct {v9, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lm2/r;->a()Lm2/p;

    move-result-object p1

    new-instance v5, Ll2/g;

    const-string v11, "add(Ljava/lang/Object;)Z"

    const/16 v7, 0x8

    const/4 v6, 0x1

    const-class v8, Lt0/b;

    const-string v10, "add"

    invoke-direct/range {v5 .. v11}, Lj9/a;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v5}, Ly4/s;->F(Lm2/p;ILl2/g;)V

    const/4 p1, 0x2

    new-array p1, p1, [Li9/c;

    sget-object v1, Ll2/b;->n:Ll2/b;

    aput-object v1, p1, v0

    sget-object v1, Ll2/b;->o:Ll2/b;

    aput-object v1, p1, v6

    invoke-static {p1}, Ll9/a;->d([Li9/c;)Lm0/h1;

    move-result-object p1

    iget-object v1, v9, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v9, Lt0/b;->n:I

    invoke-static {v1, p1, v0, v2}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    iget p1, v9, Lt0/b;->n:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v6

    iget-object v0, v9, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    check-cast p1, Ll2/h;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Ll2/h;->c:Lb3/k;

    invoke-static {p2}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v3

    new-instance v0, Ll2/c;

    iget-object v1, p1, Ll2/h;->a:Lm2/p;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ll2/c;-><init>(Lm2/p;Lb3/k;Lz9/d;Lb0/l1;Lf2/y;)V

    iget-object p0, p1, Ll2/h;->d:Le2/h1;

    invoke-static {p0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object p1

    invoke-interface {p1, p0, v6}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    invoke-virtual {v2}, Lb3/k;->c()J

    move-result-wide p1

    invoke-static {p0}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object p0

    invoke-static {p0}, Lm1/v;->w(Lb3/k;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v1, Landroid/graphics/Point;

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    const-wide v6, 0xffffffffL

    and-long/2addr p1, v6

    long-to-int p1, p1

    invoke-direct {v1, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v5, p0, v1, v0}, Lb5/c;->g(Lf2/y;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)Landroid/view/ScrollCaptureTarget;

    move-result-object p0

    invoke-static {v2}, Lm1/v;->w(Lb3/k;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lb5/c;->s(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-virtual {p0}, Lf2/y;->M()V

    return-void
.end method

.method public final onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget-object p0, p0, Lf2/y;->C0:Lu1/c;

    iget-object p0, p0, Lu1/c;->a:Lr0/e1;

    new-instance v0, Lu1/a;

    invoke-direct {v0, p1}, Lu1/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .locals 3

    iget-object p0, p0, Lf2/y;->K:Lh1/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lc6/o;->N(Lh1/d;Landroid/util/LongSparseArray;)V

    return-void

    :cond_1
    iget-object v0, p0, Lh1/d;->l:Lf2/y;

    new-instance v1, Lb/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lf2/y;->A:Lf2/x1;

    iget-object v0, v0, Lf2/x1;->a:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/y;->R0:Z

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    invoke-static {}, Lf2/k0;->j()Z

    move-result p1

    invoke-virtual {p0}, Lf2/y;->getShowLayoutBounds()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lf2/y;->setShowLayoutBounds(Z)V

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p0

    invoke-static {p0}, Lf2/y;->n(Le2/g0;)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    cmpg-float p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lk1/h;->d(I)Lk1/f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Lk1/f;->a:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, Lm1/v;->A(Landroid/graphics/Rect;)Ll1/c;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    new-instance v3, Lf2/u;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lf2/u;-><init>(II)V

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p1, p2, v3}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p2

    new-instance v3, Lf2/u;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lf2/u;-><init>(II)V

    check-cast p2, Lk1/o;

    invoke-virtual {p2, p1, v2, v3}, Lk1/o;->e(ILl1/c;Li9/c;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_2
    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    :goto_3
    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    invoke-virtual {p0, p1}, Lk1/o;->h(I)Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final s([F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lf2/y;->D()V

    iget-object v2, v0, Lf2/y;->m0:[F

    invoke-static {v1, v2}, Lm1/z;->e([F[F)V

    iget-wide v2, v0, Lf2/y;->q0:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget-wide v3, v0, Lf2/y;->q0:J

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-object v0, v0, Lf2/y;->l0:[F

    invoke-static {v0}, Lm1/z;->d([F)V

    invoke-static {v0, v2, v3}, Lm1/z;->f([FFF)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lf2/k0;->f([FI[FI)F

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v4}, Lf2/k0;->f([FI[FI)F

    move-result v5

    const/4 v6, 0x2

    invoke-static {v0, v2, v1, v6}, Lf2/k0;->f([FI[FI)F

    move-result v7

    const/4 v8, 0x3

    invoke-static {v0, v2, v1, v8}, Lf2/k0;->f([FI[FI)F

    move-result v9

    invoke-static {v0, v4, v1, v2}, Lf2/k0;->f([FI[FI)F

    move-result v10

    invoke-static {v0, v4, v1, v4}, Lf2/k0;->f([FI[FI)F

    move-result v11

    invoke-static {v0, v4, v1, v6}, Lf2/k0;->f([FI[FI)F

    move-result v12

    invoke-static {v0, v4, v1, v8}, Lf2/k0;->f([FI[FI)F

    move-result v13

    invoke-static {v0, v6, v1, v2}, Lf2/k0;->f([FI[FI)F

    move-result v14

    invoke-static {v0, v6, v1, v4}, Lf2/k0;->f([FI[FI)F

    move-result v15

    invoke-static {v0, v6, v1, v6}, Lf2/k0;->f([FI[FI)F

    move-result v16

    invoke-static {v0, v6, v1, v8}, Lf2/k0;->f([FI[FI)F

    move-result v17

    invoke-static {v0, v8, v1, v2}, Lf2/k0;->f([FI[FI)F

    move-result v18

    invoke-static {v0, v8, v1, v4}, Lf2/k0;->f([FI[FI)F

    move-result v19

    invoke-static {v0, v8, v1, v6}, Lf2/k0;->f([FI[FI)F

    move-result v20

    invoke-static {v0, v8, v1, v8}, Lf2/k0;->f([FI[FI)F

    move-result v0

    aput v3, v1, v2

    aput v5, v1, v4

    aput v7, v1, v6

    aput v9, v1, v8

    const/4 v2, 0x4

    aput v10, v1, v2

    const/4 v2, 0x5

    aput v11, v1, v2

    const/4 v2, 0x6

    aput v12, v1, v2

    const/4 v2, 0x7

    aput v13, v1, v2

    const/16 v2, 0x8

    aput v14, v1, v2

    const/16 v2, 0x9

    aput v15, v1, v2

    const/16 v2, 0xa

    aput v16, v1, v2

    const/16 v2, 0xb

    aput v17, v1, v2

    const/16 v2, 0xc

    aput v18, v1, v2

    const/16 v2, 0xd

    aput v19, v1, v2

    const/16 v2, 0xe

    aput v20, v1, v2

    const/16 v2, 0xf

    aput v0, v1, v2

    return-void
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 0

    iget-object p0, p0, Lf2/y;->J:Lf2/e0;

    iput-wide p1, p0, Lf2/e0;->s:J

    return-void
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->U:Lr0/e1;

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setContentCaptureManager$ui(Lh1/d;)V
    .locals 0

    iput-object p1, p0, Lf2/y;->K:Lh1/d;

    return-void
.end method

.method public setCoroutineContext(Ly8/h;)V
    .locals 9

    iput-object p1, p0, Lf2/y;->y:Ly8/h;

    invoke-virtual {p0}, Lf2/y;->getRoot()Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    instance-of p1, p0, Ly1/k0;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ly1/k0;

    invoke-virtual {p1}, Ly1/k0;->O0()V

    :cond_0
    iget-object p1, p0, Lf1/q;->l:Lf1/q;

    iget-boolean p1, p1, Lf1/q;->y:Z

    if-nez p1, :cond_1

    const-string p1, "visitSubtreeIf called on an unattached node"

    invoke-static {p1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v1, v0, [Lf1/q;

    invoke-direct {p1, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v1, p0, Lf1/q;->q:Lf1/q;

    if-nez v1, :cond_2

    invoke-static {p1, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_0
    iget p0, p1, Lt0/b;->n:I

    if-eqz p0, :cond_c

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/q;

    iget v1, p0, Lf1/q;->o:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_b

    iget-boolean v2, v1, Lf1/q;->y:Z

    if-eqz v2, :cond_b

    iget v2, v1, Lf1/q;->n:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v2

    :goto_2
    if-eqz v3, :cond_a

    instance-of v5, v3, Le2/v1;

    if-eqz v5, :cond_3

    check-cast v3, Le2/v1;

    instance-of v5, v3, Ly1/k0;

    if-eqz v5, :cond_9

    check-cast v3, Ly1/k0;

    invoke-virtual {v3}, Ly1/k0;->O0()V

    goto :goto_5

    :cond_3
    iget v5, v3, Lf1/q;->n:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_9

    instance-of v5, v3, Le2/k;

    if-eqz v5, :cond_9

    move-object v5, v3

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_8

    iget v8, v5, Lf1/q;->n:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_4

    move-object v3, v5

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    new-instance v4, Lt0/b;

    new-array v7, v0, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v4, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_8
    if-ne v6, v7, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_2

    :cond_a
    iget-object v1, v1, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_b
    invoke-static {p1, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_c
    return-void
.end method

.method public final setFrameEndScheduler$ui(Lf2/y1;)V
    .locals 0

    iput-object p1, p0, Lf2/y;->p:Lf2/y1;

    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui(J)V
    .locals 0

    iput-wide p1, p0, Lf2/y;->o0:J

    return-void
.end method

.method public final setOnViewTreeOwnersAvailable(Li9/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lf2/y;->t0:Li9/c;

    :cond_1
    return-void
.end method

.method public final setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui(Lv1/a;)V
    .locals 0

    iput-object p1, p0, Lf2/y;->n:Lv1/a;

    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lf2/y;->e0:Z

    return-void
.end method

.method public setUncaughtExceptionHandler(Le2/w1;)V
    .locals 0

    iget-object p0, p0, Lf2/y;->i0:Le2/v0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final setUncaughtExceptionHandler$ui(Le2/w1;)V
    .locals 0

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final t(J)J
    .locals 7

    invoke-virtual {p0}, Lf2/y;->D()V

    iget-object v0, p0, Lf2/y;->m0:[F

    invoke-static {p1, p2, v0}, Lm1/z;->b(J[F)J

    move-result-wide p1

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-wide v2, p0, Lf2/y;->q0:J

    shr-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v5, p0, Lf2/y;->q0:J

    and-long/2addr v5, v3

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float/2addr p0, p1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final u(Z)V
    .locals 2

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    iget-object v1, v0, Le2/v0;->b:Lg5/m;

    invoke-virtual {v1}, Lg5/m;->n()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Le2/v0;->e:Lg5/s;

    iget-object v1, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v1, "AndroidOwner:measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lf2/y;->P0:Lf2/v;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Le2/v0;->j(Lf2/v;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Le2/v0;->a(Z)V

    iget-boolean v0, p0, Lf2/y;->R:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    iput-boolean p1, p0, Lf2/y;->R:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final v(Le2/g0;J)V
    .locals 2

    iget-object v0, p0, Lf2/y;->i0:Le2/v0;

    const-string v1, "AndroidOwner:measureAndLayout"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Le2/v0;->k(Le2/g0;J)V

    iget-object p1, v0, Le2/v0;->b:Lg5/m;

    invoke-virtual {p1}, Lg5/m;->n()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Le2/v0;->a(Z)V

    iget-boolean p2, p0, Lf2/y;->R:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    iput-boolean p1, p0, Lf2/y;->R:Z

    :cond_0
    invoke-virtual {p0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object p0

    invoke-virtual {p0}, Ln2/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final w(I)Z
    .locals 6

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lk1/h;->c(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Invalid focus direction"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v2

    check-cast v2, Lk1/o;

    invoke-virtual {v2}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Lk1/h;->c(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    iget-object v1, v1, Le2/g0;->A:Le3/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le3/k;->getInteropView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {v1, p0}, Lf2/k0;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lk1/h;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-static {v1}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "findNextViewInEmbeddedView called when owner does not have anything focused."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {v1}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final x(Le2/p1;Z)V
    .locals 1

    iget-object v0, p0, Lf2/y;->O:Lk/h0;

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lf2/y;->Q:Z

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    iget-object p0, p0, Lf2/y;->P:Lk/h0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/h0;->j(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lf2/y;->Q:Z

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p2, p0, Lf2/y;->P:Lk/h0;

    if-nez p2, :cond_3

    new-instance p2, Lk/h0;

    invoke-direct {p2}, Lk/h0;-><init>()V

    iput-object p2, p0, Lf2/y;->P:Lk/h0;

    :cond_3
    invoke-virtual {p2, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 10

    iget-boolean v0, p0, Lf2/y;->a0:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v0

    iget-object v0, v0, Le2/s1;->a:Ld1/b0;

    iget-object v3, v0, Ld1/b0;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Ld1/b0;->f:Lt0/b;

    iget v4, v0, Lt0/b;->n:I

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    iget-object v7, v0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ld1/a0;

    invoke-virtual {v7}, Ld1/a0;->d()V

    iget-object v7, v7, Ld1/a0;->f:Lk/m0;

    invoke-virtual {v7}, Lk/m0;->j()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    if-lez v6, :cond_1

    iget-object v7, v0, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v8, v5, v6

    aget-object v9, v7, v5

    aput-object v9, v7, v8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v6, v4, v6

    invoke-static {v5, v6, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v6, v0, Lt0/b;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iput-boolean v2, p0, Lf2/y;->a0:Z

    goto :goto_3

    :goto_2
    monitor-exit v3

    throw p0

    :cond_3
    :goto_3
    iget-object v0, p0, Lf2/y;->f0:Lf2/a1;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lf2/y;->j(Landroid/view/ViewGroup;)V

    :cond_4
    iget-object v0, p0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_6

    iget-object v3, v0, Lg1/c;->s:Lk/y;

    iget v4, v3, Lk/y;->d:I

    if-nez v4, :cond_5

    iget-boolean v4, v0, Lg1/c;->t:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lg1/c;->l:Lb0/l1;

    iget-object v4, v4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v4, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillManager;->commit()V

    iput-boolean v2, v0, Lg1/c;->t:Z

    :cond_5
    iget v3, v3, Lk/y;->d:I

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, v0, Lg1/c;->t:Z

    :cond_6
    :goto_4
    iget-object v0, p0, Lf2/y;->I0:Lk/h0;

    invoke-virtual {v0}, Lk/h0;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lf2/y;->I0:Lk/h0;

    invoke-virtual {v0, v2}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lf2/y;->I0:Lk/h0;

    iget v0, v0, Lk/h0;->b:I

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_9

    iget-object v4, p0, Lf2/y;->I0:Lk/h0;

    invoke-virtual {v4, v3}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li9/a;

    iget-object v5, p0, Lf2/y;->I0:Lk/h0;

    if-ltz v3, :cond_8

    iget v6, v5, Lk/h0;->b:I

    if-ge v3, v6, :cond_8

    iget-object v5, v5, Lk/h0;->a:[Ljava/lang/Object;

    aget-object v6, v5, v3

    aput-object v1, v5, v3

    if-eqz v4, :cond_7

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v5, v3}, Lk/h0;->n(I)V

    throw v1

    :cond_9
    iget-object v3, p0, Lf2/y;->I0:Lk/h0;

    invoke-virtual {v3, v2, v0}, Lk/h0;->l(II)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public final z(Le2/g0;)V
    .locals 3

    iget-object v0, p0, Lf2/y;->J:Lf2/e0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf2/e0;->J:Z

    invoke-virtual {v0}, Lf2/e0;->o()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lf2/e0;->p(Le2/g0;)V

    :goto_0
    iget-object p0, p0, Lf2/y;->K:Lh1/d;

    iput-boolean v1, p0, Lh1/d;->r:Z

    invoke-virtual {p0}, Lh1/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lh1/d;->s:Lw9/e;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
