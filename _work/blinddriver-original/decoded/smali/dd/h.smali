.class public final Ldd/h;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ldd/i;

.field public u:I


# direct methods
.method public constructor <init>(Ldd/i;La9/c;)V
    .locals 0

    iput-object p1, p0, Ldd/h;->t:Ldd/i;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ldd/h;->s:Ljava/lang/Object;

    iget p1, p0, Ldd/h;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldd/h;->u:I

    iget-object p1, p0, Ldd/h;->t:Ldd/i;

    invoke-static {p1, p0}, Ldd/i;->a(Ldd/i;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
