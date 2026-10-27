.class public final Lvc/d;
.super La9/c;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:J

.field public n:Ljava/net/Socket;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lvc/f;

.field public q:I


# direct methods
.method public constructor <init>(Lvc/f;La9/c;)V
    .locals 0

    iput-object p1, p0, Lvc/d;->p:Lvc/f;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lvc/d;->o:Ljava/lang/Object;

    iget p1, p0, Lvc/d;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvc/d;->q:I

    iget-object p1, p0, Lvc/d;->p:Lvc/f;

    invoke-static {p1, p0}, Lvc/f;->a(Lvc/f;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
