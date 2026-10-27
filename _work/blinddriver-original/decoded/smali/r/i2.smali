.class public final Lr/i2;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lj9/x;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lr/n2;

.field public o:I


# direct methods
.method public constructor <init>(Lr/n2;La9/c;)V
    .locals 0

    iput-object p1, p0, Lr/i2;->n:Lr/n2;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lr/i2;->m:Ljava/lang/Object;

    iget p1, p0, Lr/i2;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr/i2;->o:I

    iget-object p1, p0, Lr/i2;->n:Lr/n2;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lr/n2;->a(JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
