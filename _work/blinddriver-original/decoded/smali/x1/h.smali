.class public final Lx1/h;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:J

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lx1/i;

.field public o:I


# direct methods
.method public constructor <init>(Lx1/i;La9/c;)V
    .locals 0

    iput-object p1, p0, Lx1/h;->n:Lx1/i;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lx1/h;->m:Ljava/lang/Object;

    iget p1, p0, Lx1/h;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx1/h;->o:I

    iget-object p1, p0, Lx1/h;->n:Lx1/i;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lx1/i;->y(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
