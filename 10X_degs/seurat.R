library(Seurat)

Object_data <-  readRDS("/pathway/data_object.obj")
## Object_data@meta.data$Cluster == target
diff.exp.data <- FindAllMarkers(Object_data,  group.by = Cluster,only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)
write.table(diff.exp.data, paste0(outdir, Exp.Name, ".DEGs.table.txt"), sep="\t", quote=F)
