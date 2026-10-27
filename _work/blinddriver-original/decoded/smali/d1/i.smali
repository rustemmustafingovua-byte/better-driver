.class public final Ld1/i;
.super Ld1/w;
.source "SourceFile"


# instance fields
.field public final c:Ld1/c;


# direct methods
.method public constructor <init>(Ld1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/i;->c:Ld1/c;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    iget-object p0, p0, Ld1/i;->c:Ld1/c;

    invoke-virtual {p0}, Ld1/c;->c()V

    new-instance p0, Ld1/h;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
