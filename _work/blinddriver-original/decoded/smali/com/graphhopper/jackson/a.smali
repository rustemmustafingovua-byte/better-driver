.class public final synthetic Lcom/graphhopper/jackson/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lp6/v;


# direct methods
.method public synthetic constructor <init>(Lp6/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/jackson/a;->a:Lp6/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/jackson/a;->a:Lp6/v;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lp6/v;->L(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
