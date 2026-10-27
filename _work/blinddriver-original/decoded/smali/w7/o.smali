.class public final Lw7/o;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field public static final l:Lw7/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw7/o;

    invoke-direct {v0}, Lcom/google/gson/JsonElement;-><init>()V

    sput-object v0, Lw7/o;->l:Lw7/o;

    return-void
.end method


# virtual methods
.method public final deepCopy()Lcom/google/gson/JsonElement;
    .locals 0

    sget-object p0, Lw7/o;->l:Lw7/o;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lw7/o;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lw7/o;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
