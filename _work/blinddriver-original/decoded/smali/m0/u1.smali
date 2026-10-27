.class public final Lm0/u1;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Lm0/v1;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lm0/v1;

.field public o:I


# direct methods
.method public constructor <init>(Lm0/v1;La9/c;)V
    .locals 0

    iput-object p1, p0, Lm0/u1;->n:Lm0/v1;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm0/u1;->m:Ljava/lang/Object;

    iget p1, p0, Lm0/u1;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm0/u1;->o:I

    iget-object p1, p0, Lm0/u1;->n:Lm0/v1;

    invoke-virtual {p1, p0}, Lm0/v1;->s(La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
