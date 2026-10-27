.class public final Lbd/h;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/io/File;

.field public m:Ljava/io/File;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lbd/i;

.field public p:I


# direct methods
.method public constructor <init>(Lbd/i;La9/c;)V
    .locals 0

    iput-object p1, p0, Lbd/h;->o:Lbd/i;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbd/h;->n:Ljava/lang/Object;

    iget p1, p0, Lbd/h;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbd/h;->p:I

    iget-object p1, p0, Lbd/h;->o:Lbd/i;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lbd/i;->a(Lbd/i;Lua/nav/hazards/RoadObjectsPackInfo;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
