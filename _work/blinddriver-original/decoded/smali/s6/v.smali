.class public final Ls6/v;
.super Ls6/r;
.source "SourceFile"


# static fields
.field public static final p:Ls6/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls6/v;

    const-class v1, Ljava/lang/Short;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ls6/r;-><init>(ILjava/lang/Class;)V

    sput-object v0, Ls6/v;->p:Ls6/v;

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-virtual {p2, p0}, Ls5/g;->c0(S)V

    return-void
.end method
