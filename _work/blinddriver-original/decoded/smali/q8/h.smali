.class public final Lq8/h;
.super Lq8/d;
.source "SourceFile"


# instance fields
.field public final b:Lr8/m;


# direct methods
.method public constructor <init>(Lr8/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8/h;->b:Lr8/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp8/b;)Z
    .locals 0

    iget-object p0, p0, Lq8/h;->b:Lr8/m;

    invoke-interface {p0, p1}, Lr8/m;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq8/h;->b:Lr8/m;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
