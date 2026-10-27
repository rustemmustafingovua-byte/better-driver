.class public final Lid/j;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/util/List;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Z

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lid/l;

.field public s:I


# direct methods
.method public constructor <init>(Lid/l;La9/c;)V
    .locals 0

    iput-object p1, p0, Lid/j;->r:Lid/l;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lid/j;->q:Ljava/lang/Object;

    iget p1, p0, Lid/j;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lid/j;->s:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lid/j;->r:Lid/l;

    invoke-virtual {v1, p1, v0, p0}, Lid/l;->a(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
