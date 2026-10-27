.class public final synthetic Lcom/graphhopper/routing/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/LinkedHashMap;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/util/e;->a:I

    iput-object p3, p0, Lcom/graphhopper/routing/util/e;->b:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/graphhopper/routing/util/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/util/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/routing/util/e;->c:Ljava/lang/String;

    check-cast p1, Lb6/q;

    iget-object p0, p0, Lcom/graphhopper/routing/util/e;->b:Ljava/util/LinkedHashMap;

    invoke-static {p0, v0, p1}, Lcom/graphhopper/routing/util/EncodingManager;->f(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/routing/util/e;->c:Ljava/lang/String;

    check-cast p1, Lb6/q;

    iget-object p0, p0, Lcom/graphhopper/routing/util/e;->b:Ljava/util/LinkedHashMap;

    invoke-static {p0, v0, p1}, Lcom/graphhopper/routing/util/EncodingManager;->a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
