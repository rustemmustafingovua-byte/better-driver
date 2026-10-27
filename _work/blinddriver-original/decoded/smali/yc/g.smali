.class public final Lyc/g;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/List;

.field public m:Ljava/util/Iterator;

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lua/nav/geo/c;

.field public q:I


# direct methods
.method public constructor <init>(Lua/nav/geo/c;La9/c;)V
    .locals 0

    iput-object p1, p0, Lyc/g;->p:Lua/nav/geo/c;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyc/g;->o:Ljava/lang/Object;

    iget p1, p0, Lyc/g;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyc/g;->q:I

    iget-object p1, p0, Lyc/g;->p:Lua/nav/geo/c;

    invoke-virtual {p1, p0}, Lua/nav/geo/c;->g(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
