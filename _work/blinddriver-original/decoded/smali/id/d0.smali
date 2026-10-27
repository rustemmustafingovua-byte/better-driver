.class public final Lid/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/b0;


# instance fields
.field public final a:Ldd/k0;

.field public final b:Lad/x;

.field public final c:Lad/j0;

.field public final d:Lid/e;

.field public final e:Lu9/t;

.field public final f:Lp/a1;

.field public final g:Lr0/o1;

.field public volatile h:Lid/l0;

.field public i:Lua/nav/routing/Route;

.field public j:Lu9/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/d0;->Companion:Lid/b0;

    return-void
.end method

.method public constructor <init>(Ldd/k0;Lad/x;Lad/j0;Lid/e;Lu9/t;Lp/a1;Lr0/o1;)V
    .locals 1

    const-string v0, "gh"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/d0;->a:Ldd/k0;

    iput-object p2, p0, Lid/d0;->b:Lad/x;

    iput-object p3, p0, Lid/d0;->c:Lad/j0;

    iput-object p4, p0, Lid/d0;->d:Lid/e;

    iput-object p5, p0, Lid/d0;->e:Lu9/t;

    iput-object p6, p0, Lid/d0;->f:Lp/a1;

    iput-object p7, p0, Lid/d0;->g:Lr0/o1;

    return-void
.end method


# virtual methods
.method public final a()Lad/q1;
    .locals 1

    iget-object v0, p0, Lid/d0;->f:Lp/a1;

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lid/d0;->h:Lid/l0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lid/l0;->z:Lad/q1;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lua/nav/routing/Route;)V
    .locals 0

    iput-object p1, p0, Lid/d0;->i:Lua/nav/routing/Route;

    iget-object p0, p0, Lid/d0;->h:Lid/l0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lid/l0;->i(Lua/nav/routing/Route;)V

    :cond_0
    return-void
.end method
