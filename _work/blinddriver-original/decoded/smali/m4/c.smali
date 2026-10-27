.class public final Lm4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final l:I

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm4/c;->l:I

    iput p4, p0, Lm4/c;->m:I

    iput-object p1, p0, Lm4/c;->n:Ljava/lang/String;

    iput-object p3, p0, Lm4/c;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lm4/c;

    const-string v0, "other"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lm4/c;->l:I

    iget v1, p1, Lm4/c;->l:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lm4/c;->m:I

    iget p1, p1, Lm4/c;->m:I

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return v0
.end method
