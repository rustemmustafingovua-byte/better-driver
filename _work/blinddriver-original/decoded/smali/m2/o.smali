.class public final Lm2/o;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/z1;


# instance fields
.field public final synthetic z:Lj9/o;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 0

    check-cast p1, Lj9/o;

    iput-object p1, p0, Lm2/o;->z:Lj9/o;

    invoke-direct {p0}, Lf1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(Lm2/x;)V
    .locals 0

    iget-object p0, p0, Lm2/o;->z:Lj9/o;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
