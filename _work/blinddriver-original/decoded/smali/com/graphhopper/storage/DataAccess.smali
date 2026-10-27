.class public interface abstract Lcom/graphhopper/storage/DataAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract create(J)Lcom/graphhopper/storage/DataAccess;
.end method

.method public abstract ensureCapacity(J)Z
.end method

.method public abstract flush()V
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getBytes(J[BI)V
.end method

.method public abstract getCapacity()J
.end method

.method public abstract getHeader(I)I
.end method

.method public abstract getInt(J)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSegmentSize()I
.end method

.method public abstract getSegments()I
.end method

.method public abstract getShort(J)S
.end method

.method public abstract getType()Lcom/graphhopper/storage/DAType;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract loadExisting()Z
.end method

.method public abstract setByte(JB)V
.end method

.method public abstract setBytes(J[BI)V
.end method

.method public abstract setHeader(II)V
.end method

.method public abstract setInt(JI)V
.end method

.method public abstract setShort(JS)V
.end method
