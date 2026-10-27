.class public final Lsc/n0;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/Iterator;

.field public n:Lzc/n;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lua/nav/c;

.field public q:I


# direct methods
.method public constructor <init>(Lua/nav/c;La9/c;)V
    .locals 0

    iput-object p1, p0, Lsc/n0;->p:Lua/nav/c;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lsc/n0;->o:Ljava/lang/Object;

    iget p1, p0, Lsc/n0;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lsc/n0;->q:I

    iget-object p1, p0, Lsc/n0;->p:Lua/nav/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lua/nav/c;->f(Lua/nav/c;Lzc/m;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
