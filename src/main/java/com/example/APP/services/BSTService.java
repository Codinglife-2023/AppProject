package com.example.APP.services;

public class BSTService {

    // Node class for the binary search tree
    public static class Node {
        int value;
        Node left, right;

        Node(int value) {
            this.value = value;
            left = right = null;
        }
    }

    // Function to insert a value into the BST
    public static Node insert(Node root, int value) {
        if (root == null) {
            return new Node(value);
        }
        if (value < root.value) {
            root.left = insert(root.left, value);
        } else if (value > root.value) {
            root.right = insert(root.right, value);
        }
        return root;
    }

    // Function to visualize the tree as a string (inorder traversal)
    public static void inorderTraversal(Node root, StringBuilder result) {
        if (root != null) {
            inorderTraversal(root.left, result);
            result.append(root.value).append(" ");
            inorderTraversal(root.right, result);
        }
    }

    // Main function to construct and visualize the BST
    public static String constructAndVisualizeTree(int[] numbers) {
        Node root = null;
        for (int num : numbers) {
            root = insert(root, num);
        }
        StringBuilder result = new StringBuilder();
        inorderTraversal(root, result);
        return result.toString();
    }
}
    
